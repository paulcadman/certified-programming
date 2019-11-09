src/CpdtTactics.vo src/CpdtTactics.glob src/CpdtTactics.v.beautified: src/CpdtTactics.v
src/CpdtTactics.vio: src/CpdtTactics.v
src/MoreSpecif.vo src/MoreSpecif.glob src/MoreSpecif.v.beautified: src/MoreSpecif.v
src/MoreSpecif.vio: src/MoreSpecif.v
src/DepList.vo src/DepList.glob src/DepList.v.beautified: src/DepList.v src/CpdtTactics.vo
src/DepList.vio: src/DepList.v src/CpdtTactics.vio
src/Intro.vo src/Intro.glob src/Intro.v.beautified: src/Intro.v
src/Intro.vio: src/Intro.v
src/StackMachine.vo src/StackMachine.glob src/StackMachine.v.beautified: src/StackMachine.v src/CpdtTactics.vo
src/StackMachine.vio: src/StackMachine.v src/CpdtTactics.vio
src/InductiveTypes.vo src/InductiveTypes.glob src/InductiveTypes.v.beautified: src/InductiveTypes.v src/CpdtTactics.vo
src/InductiveTypes.vio: src/InductiveTypes.v src/CpdtTactics.vio
src/Predicates.vo src/Predicates.glob src/Predicates.v.beautified: src/Predicates.v src/CpdtTactics.vo
src/Predicates.vio: src/Predicates.v src/CpdtTactics.vio
src/Coinductive.vo src/Coinductive.glob src/Coinductive.v.beautified: src/Coinductive.v src/CpdtTactics.vo
src/Coinductive.vio: src/Coinductive.v src/CpdtTactics.vio
src/Subset.vo src/Subset.glob src/Subset.v.beautified: src/Subset.v src/CpdtTactics.vo
src/Subset.vio: src/Subset.v src/CpdtTactics.vio
src/GeneralRec.vo src/GeneralRec.glob src/GeneralRec.v.beautified: src/GeneralRec.v src/CpdtTactics.vo src/Coinductive.vo
src/GeneralRec.vio: src/GeneralRec.v src/CpdtTactics.vio src/Coinductive.vio
src/MoreDep.vo src/MoreDep.glob src/MoreDep.v.beautified: src/MoreDep.v src/CpdtTactics.vo src/MoreSpecif.vo
src/MoreDep.vio: src/MoreDep.v src/CpdtTactics.vio src/MoreSpecif.vio
src/DataStruct.vo src/DataStruct.glob src/DataStruct.v.beautified: src/DataStruct.v src/CpdtTactics.vo
src/DataStruct.vio: src/DataStruct.v src/CpdtTactics.vio
src/Equality.vo src/Equality.glob src/Equality.v.beautified: src/Equality.v src/CpdtTactics.vo
src/Equality.vio: src/Equality.v src/CpdtTactics.vio
src/Generic.vo src/Generic.glob src/Generic.v.beautified: src/Generic.v src/CpdtTactics.vo src/DepList.vo
src/Generic.vio: src/Generic.v src/CpdtTactics.vio src/DepList.vio
src/Universes.vo src/Universes.glob src/Universes.v.beautified: src/Universes.v src/DepList.vo src/CpdtTactics.vo
src/Universes.vio: src/Universes.v src/DepList.vio src/CpdtTactics.vio
src/LogicProg.vo src/LogicProg.glob src/LogicProg.v.beautified: src/LogicProg.v src/CpdtTactics.vo
src/LogicProg.vio: src/LogicProg.v src/CpdtTactics.vio
src/Match.vo src/Match.glob src/Match.v.beautified: src/Match.v src/CpdtTactics.vo
src/Match.vio: src/Match.v src/CpdtTactics.vio
src/Reflection.vo src/Reflection.glob src/Reflection.v.beautified: src/Reflection.v src/CpdtTactics.vo src/MoreSpecif.vo
src/Reflection.vio: src/Reflection.v src/CpdtTactics.vio src/MoreSpecif.vio
src/Large.vo src/Large.glob src/Large.v.beautified: src/Large.v src/CpdtTactics.vo src/MoreDep.vo
src/Large.vio: src/Large.v src/CpdtTactics.vio src/MoreDep.vio
src/ProgLang.vo src/ProgLang.glob src/ProgLang.v.beautified: src/ProgLang.v src/CpdtTactics.vo src/DepList.vo
src/ProgLang.vio: src/ProgLang.v src/CpdtTactics.vio src/DepList.vio
src/Conclusion.vo src/Conclusion.glob src/Conclusion.v.beautified: src/Conclusion.v
src/Conclusion.vio: src/Conclusion.v
