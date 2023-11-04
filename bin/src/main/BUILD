# scalac_plugin(
#     name="acyclic",
#     artifact=":com_lihoyi_acyclic_2.13.12",
# )
# 
# jvm_artifact(
#     name='com_lihoyi_acyclic_2.13.12',
#     group="com.lihaoyi",
#     artifact="acyclic_2.13.12",
#     version="0.3.9",
#     # Because `acyclic` provides a package which does not match its `group`, we explicitly list it
#     # here, which allows inference to recognize that imports of this package are provided by this
#     # artifact. See https://www.pantsbuild.org/v2.9/docs/reference-jvm_artifact#codepackagescode
#     # for more information.
#     packages=["acyclic.**"],
# )

jvm_artifact(
    name="org.scala-lang_scala-library_2.13.12",
    group="org.scala-lang",
    artifact="scala-library",
    version="2.12.10",
    resolve="jvm-default",
)

# jvm_artifact(
#     name='org.springframework.boot_spring-boot-starter',
#     group="org.springframework.boot",
#     artifact="spring-boot-starter",
#     version="2.4.0",
#     # See the callout below for more information on the `packages` argument.
#     packages=["org.springframework.boot.**"],
# )

scala_sources(
    name="scalasources",
    sources=[
        'scala/example/Main.scala',
    ]
)