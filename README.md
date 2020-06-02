# Ares({A}PI {R}elated {E}rror {S}pecification Inference)

### What is Ares?

An important category of API-related defects is error handling defects, which may result in security and reliability flaws. They can be detected under the help of static program analysis, provided that error specifications are known. Writing error specifications manually is time-consuming and tedious, therefore automatic inference from API usage patterns is preferred. 
We present Ares, a tool for automatically inferring precise error specifications for C language based on fast static analysis. Multiple heuristics are employed to identify error handling blocks and error specifications are inferred by analyzing error handling logic. 

Ares is evaluated on 19 real world projects, and the specifications inferred from Ares help identify dozens of API-related bugs in well-known projects such as OpenSSL, 10 of which are confirmed or fixed. We are trying our best to apply Ares to more programs. We upload the details in [evaluation_data/new_bugs](evaluation_data/new_bugs) 


Ares is still under development, and contains a lot of bugs and TODO lists. Any bugs or feature requests, feel free to open issues.

### What is in this repo?

- Evaluation data ([evaluation_data](evaluation_data))
  - 19 real world projects
  - New bugs found by Ares
- Tools([tool](tool))
  - build-capture
   - Ares tookit



### Evaluation Data

We select 19 widely used projects, i.e., [keepalived](https://github.com/acassen/keepalived), [openssl](https://github.com/openssl/openssl) et al.  We evaluate our approach from two perspectives.

- Inferred error specifications. We employ 19 real world projects. For each project, Ares finds error specifications using multiple heuristics and the found error specifications are showed in the errspec.txt. These projects are used for comparison with state-of-the-art methods in terms of precision and ratio. 
- New bugs in real world projects. We also apply Ares to the latest versions of real-world programs to evaluate whether our approach can find new bugs.

We also test these projects on  [APEx](https://github.com/yujokang/APEx), an automically error specification inference tool.

We upload the build capture Results of 19 projects at [Real-World-Projects](evaluation_data/Real-World-Projects).

#### New Bugs

The main motivation of Ares is to infer error specifications and using the specifications to detect API-misuse bugs in real-world programs, namely, to determine whether Ares can find error specifications and previously unkown bugs. Therefore, we apply Ares to the 19 projects to find error specifications. And using the inferred specifications, we apply the specifications to an API-misuse detecting tool and 10 error handling bugs are confirmed by developers.

Up to now, 10 previously unknown bugs have been confirmed by developers using the following specifications. 

|      Project      | Error Specification
| :---------------: | ---------:
|      keepalived      |        SSL\_CTX\_new, eq null
|      keepalived       |         SSL\_new, eq null
|        httping        |    SSL\_CTX\_new, eq null
|       irssi        |        BIO\_read, slt 0
|      irssi      |          SSL\_get\_peer\_certificate, eq null
|      sslsplit      |       SSL\_CTX\_use\_certificate, eq 0
|     sslsplit     |        SSL\_CTX\_use\_PrivateKey, sle 0
|   thc-ipv6   |              BN\_new, eq null
|       openssl       |       RAND\_bytes, sle 0
|     openssl     |           EVP\_MD\_CTX\_new, eq null

We upload the details  in [evaluation_data/new_bugs](evaluation_data/new_bugs) 


### Tools

#### build-capture

Build capture tool is designed for capturing the build process of a Makefile project. Basically, it will save all the single lines of $CC$ and re-make the project to produce all the intermediate results.

That is, we can produce all the *.i files, which is a self-contained preprocessed files. Then for each *.i files, we can generate the LLVM-IR files clang. For example, 

```shell
$gcc -E example.c -o exmaple.i
$clang-3.9 -S -emit-llvm -g example.i
```


In theory, any projects supported by clang can be build-capture by our tool. However, clang is different from gcc. Therefore, we suggest to replace the $CC$ in Makefile by clang-3.9, such as

```makefile
CROSS_COMPILE=
CC=$(CROSS_COMPILE)clang
```

In this way, all the *.i files can be compiled by clang to generate LLVM-IR files. 

For multiple LLVM-IR files, use the following command to combine them and use as our tool,

```shell
llvm-link a.ll b.ll -o output.bc
llvm-dis output.bc -o input4engine.ll
```

Unfortunately, build-capture tool is under the patient application process. Therefore, we cannot provide the tool here. When available, we will upload ASAP.


#### How to use

Ares can be used with the following steps: 
  - Ares requires the Unix environment (Our environment is Ubuntu 16.04) with JDK 1.8.
  - Ares requires the llvm-3.9 - for static analysis [We build our tool on llvm-3.9, other version may face some unpredictable problems.]
  - Make sure that target project can be compiled by clang-3.9, then using our build-capture tool to capture its build sequence automatically. The captured results are preprocessed by expanding the macros and in-lining header files. Then using the captured results, we can generate the corresponding IR results which are shown in [Real-World-Projects](evaluation_data/Real-World-Projects).
  - Trigger the major work of error specification mining with using the command [./infer-spec.sh](tool) [Source_Dir]. Source_Dir is the target project to be analyzed where you can find in the [Real-World-Projects](evaluation_data/Real-World-Projects).  The more detail usage is already available at:  https://youtu.be/nf1QnFAmu8Q. Inferred specifications are written to the [errspec.txt](tool/output/).
