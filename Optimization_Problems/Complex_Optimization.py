import statistics
import time

from pyomo.environ import (ConcreteModel,  # ✅ Use Pyomo's math functions
                           Constraint, Objective, SolverFactory, Var, cos,
                           minimize, sin)


def create_model():
    model = ConcreteModel()
    model.x1 = Var(bounds=(-10, 10))
    model.x2 = Var(bounds=(-10, 10))
    model.x3 = Var(bounds=(-10, 10))
    model.x4 = Var(bounds=(-10, 10))

    # ✅ Use Pyomo's sin() and cos() instead of math.sin/math.cos
    model.obj = Objective(
        expr=(model.x1 - 1)**2 +
             (model.x2 - 2)**2 +
             (model.x3 - 3)**2 +
             (model.x4 - 4)**2 +
             5*sin(model.x1) -
             3*cos(model.x2) +
             2*model.x3*model.x4,
        sense=minimize
    )

    # Constraints
    model.c1 = Constraint(expr=model.x1 + model.x2 >= 1)
    model.c2 = Constraint(expr=model.x3**2 + model.x4 <= 10)
    model.c3 = Constraint(expr=model.x1 - model.x4 == 2)

    return model

def benchmark_pyomo(runs=10):
    solver = SolverFactory("ipopt")
    times = []
    for _ in range(runs):
        model = create_model()
        start = time.time()
        solver.solve(model, tee=True)
        end = time.time()
        times.append(end - start)
    return times

if __name__ == "__main__":
    runs = 10
    times = benchmark_pyomo(runs)
    print(f"Pyomo benchmark over {runs} runs:")
    print(f"  Avg: {statistics.mean(times):.4f} s")
    print(f"  Min: {min(times):.4f} s")
    print(f"  Max: {max(times):.4f} s")
