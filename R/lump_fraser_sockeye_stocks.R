#' Lump Fraser River sockeye stocks produced by CBayes at PBS, based on regions according to Chrys Neville
#'
#' @param stock_1 The column containing the stock category you want to collapse
#'
#' @return
#' A vector of lumped fraser stocks
#' @export
#'
lump_fraser_sockeye_stocks <- function(stock_1) {
  as.factor(stock_1)
    forcats::fct_collapse(stock_1,
                          Early_Stuart = c("DRIFTWOOD", "NARROWS", "DUST", "BIVOUAC", "ROSSETTE",
                                           "SINTA", "PORTER_CR", "FORFAR", "BLACKWATER", "GLUSKIE",
                                           "PAULA", "FELIX", "KYNOCK", "HUDSON_BAY", "SANDPOINT",
                                           "FIVEMILE", "EARLY STUART"),
                          Chilliwack = c("CHILLIW_LAKE", "DOLLYVARDEN_CR", "CHILLIWACK_KOK"),
                          Pitt_Allouette_Coq = c("PITT", "COQUITLAM_KOK", "ALOUETE_KOK"),
                          Nadina_Gates_Bowron_Nahatlatch = c("NADINA", "GATES_CR", "BOWRON",
                                                             "NAHATLATCH"),
                          Early_South_Thompson = c("SEYMOUR", "SCOTCH", "EAGLE", "U_ADAMS", "CAYENNE",
                                             "FENNELL", "EARLY THOMPSON"),
                          Harrison_Widgeon = c("HARRISON", "WIDGEONSLOUGH"),
                          Late_Stuart_Stellako = c("MIDDLE", "PINCHI_CR", "TACHIE", "STELLAKO",
                                                   "KUZKWA_CR", "LATE STUART"),
                          Chilko = c("CHILKO", "CHILKO-NORTH", "CHILKO_SOUTH"),
                          Quesnel = c("L_HORSEFLY", "U_HORSEFLY", "HORSEFLY", "MCKINLEY",
                                      "MITCHELL", "WASKO_CR", "BLUE_LEAD_CK", "QUESNEL_DECEPT",
                                      "QUESNEL_HORSEF", "QUESNEL_MITCHE", "ROARING", "QUESNEL"),
                          Raft_North_Thompson = c("RAFT", "THOMPSON_N"),
                          Birkenhead_Big_Silver = c("BIRKENHEAD", "BIG_SILVER"),
                          Late_Shuswap_Portage = c("EAGLE_L", "LITTLE", "L_SHUSWAP", "MIDDLESHUSWAP",
                                                   "L_ADAMS", "PORTAGE_CR", "LATE SHUSWAP", "SHUSWAP"),
                          Weaver_Cultus = c("WEAVER", "CULTUS_LAKE")
    )
}

# Breakout Stellako from early stuart and seperate Nadina, Gates Creek, Bowron, and Nahaltlatch, separate quesnel, horsefly and mitchell
lump_fraser_20 <- function(stock_1) {
  as.factor(stock_1)
  forcats::fct_collapse(stock_1,
                        Early_Stuart = c("DRIFTWOOD", "NARROWS", "DUST", "BIVOUAC", "ROSSETTE",
                                         "SINTA", "PORTER_CR", "FORFAR", "BLACKWATER", "GLUSKIE",
                                         "PAULA", "FELIX", "KYNOCK", "HUDSON_BAY", "SANDPOINT",
                                         "FIVEMILE", "EARLY STUART"),
                        Chilliwack = c("CHILLIW_LAKE", "DOLLYVARDEN_CR", "CHILLIWACK_KOK"),
                        Pitt_Allouette_Coq = c("PITT", "COQUITLAM_KOK", "ALOUETE_KOK"),
                        Nadina = c("NADINA"),
                        Gates_Cr = c("GATES_CR"),
                        Bowron = c("BOWRON"),
                        Nathatlatch = c("NAHATLATCH"),
                        Early_South_Thompson = c("SEYMOUR", "SCOTCH", "EAGLE", "U_ADAMS", "CAYENNE",
                                           "FENNELL", "EARLY THOMPSON"),
                        Harrison = c("HARRISON"),
                        Widgeon = c("WIDGEONSLOUGH"),
                        Late_Stuart = c("MIDDLE", "PINCHI_CR", "TACHIE",
                                                 "KUZKWA_CR", "LATE STUART"),
                        Stellako = c("STELLAKO"),
                        Chilko = c("CHILKO", "CHILKO-NORTH", "CHILKO_SOUTH"),
                        Horesefly = c("L_HORSEFLY", "U_HORSEFLY", "HORSEFLY", "MCKINLEY"),
                        Mitchell = c("MITCHELL", "WASKO_CR", "BLUE_LEAD_CK", "ROARING"),
                        Quesnel = c("QUESNEL_DECEPT", "QUESNEL_HORSEF", "QUESNEL_MITCHE", "QUESNEL"),
                        Raft_North_Thompson = c("RAFT", "THOMPSON_N"),
                        Birkenhead_Big_Silver = c("BIRKENHEAD", "BIG_SILVER"),
                        Late_Shuswap_Portage = c("EAGLE_L", "LITTLE", "L_SHUSWAP", "MIDDLESHUSWAP",
                                                 "L_ADAMS", "PORTAGE_CR", "LATE SHUSWAP", "SHUSWAP"),
                        Weaver_Cultus = c("WEAVER", "CULTUS_LAKE")
  )
}
