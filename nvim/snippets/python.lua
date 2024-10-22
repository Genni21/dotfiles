return {
  s('seqlll', {
    t {
      'M, mons = Sequence(pols).coefficients_monomials()',
      'M = M.dense_matrix().change_ring(ZZ).T',
      'M = block_matrix(ZZ, [',
      '    [1, M],',
      '    [0, q]',
      '])',
      'wts = [max(wt)//x for x in wt]',
      'W = diagonal_matrix(wts)',
      'M = M * W',
      'M = M.LLL()',
      'M = M / W',
      'for row in M:',
      '    print(row)',
    },
  }),
}
