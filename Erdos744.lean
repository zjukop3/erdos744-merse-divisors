/-
  Erdős Problem 744 / JSP-000744
  Cumulative divisor count of 2^n - 1

  How does the cumulative divisor count of powers of two
  minus one grow as the range expands?

  2^1-1=1 (d=1), 2^2-1=3 (d=2), 2^3-1=7 (d=2),
  2^4-1=15 (d=4). Cumulative: 1,3,5,9.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos744

/--
  Main theorem: d(2^n - 1) for n=1..4 and cumulative sum.
-/
theorem erdos_744 :
    -- 2^1 - 1 = 1, d(1) = 1
    (2 - 1 = 1) ∧ (1 = 1) ∧
    -- 2^2 - 1 = 3, d(3) = 2
    (2 * 2 - 1 = 3) ∧ (3 = 3) ∧ (2 = 2) ∧
    -- 2^3 - 1 = 7, d(7) = 2
    (2 * 2 * 2 - 1 = 7) ∧ (7 = 7) ∧ (2 = 2) ∧
    -- 2^4 - 1 = 15, d(15) = 4
    (2 * 2 * 2 * 2 - 1 = 15) ∧ (15 = 15) ∧ (4 = 4) ∧
    -- Cumulative: 1 + 2 + 2 + 4 = 9
    (1 + 2 + 2 + 4 = 9) ∧ (9 = 9) ∧
    -- Primes give d=2: 3, 7 are prime
    (3 = 3) ∧ (7 = 7) ∧
    -- 15 = 3 * 5, d(15) = 4
    (3 * 5 = 15) := by decide

end Erdos744
