.class public abstract Lg/gom;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final d:Lg/bku;

.field public final e:Lg/eyd;

.field public final f:Lg/eya;


# direct methods
.method public constructor <init>(Lg/bku;Lg/eyd;Lg/eya;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gom;->d:Lg/bku;

    iput-object p2, p0, Lg/gom;->e:Lg/eyd;

    iput-object p3, p0, Lg/gom;->f:Lg/eya;

    return-void
.end method

.method public static g(Lg/daw;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lg/gom;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lg/xc;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3, v1}, Lg/xc;-><init>(Lg/daw;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    iget-object v3, v2, Lg/xc;->g:[Ljava/lang/annotation/Annotation;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v7, "HEAD"

    const/4 v8, 0x1

    if-ge v6, v4, :cond_12

    aget-object v10, v3, v6

    instance-of v11, v10, Lg/emm;

    if-eqz v11, :cond_0

    check-cast v10, Lg/emm;

    invoke-interface {v10}, Lg/emm;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DELETE"

    invoke-virtual {v2, v8, v7, v5}, Lg/xc;->ab(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_0
    instance-of v11, v10, Lg/hby;

    if-eqz v11, :cond_1

    check-cast v10, Lg/hby;

    invoke-interface {v10}, Lg/hby;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GET"

    invoke-virtual {v2, v8, v7, v5}, Lg/xc;->ab(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_1
    instance-of v11, v10, Lg/exd;

    if-eqz v11, :cond_2

    check-cast v10, Lg/exd;

    invoke-interface {v10}, Lg/exd;->value()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8, v5}, Lg/xc;->ab(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_2
    instance-of v7, v10, Lg/dqs;

    if-eqz v7, :cond_3

    check-cast v10, Lg/dqs;

    invoke-interface {v10}, Lg/dqs;->value()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PATCH"

    invoke-virtual {v2, v9, v7, v8}, Lg/xc;->ab(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_3
    instance-of v7, v10, Lg/awh;

    if-eqz v7, :cond_4

    check-cast v10, Lg/awh;

    invoke-interface {v10}, Lg/awh;->value()Ljava/lang/String;

    move-result-object v7

    const-string v9, "POST"

    invoke-virtual {v2, v9, v7, v8}, Lg/xc;->ab(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_4
    instance-of v7, v10, Lg/ash;

    if-eqz v7, :cond_5

    check-cast v10, Lg/ash;

    invoke-interface {v10}, Lg/ash;->value()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PUT"

    invoke-virtual {v2, v9, v7, v8}, Lg/xc;->ab(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_5
    instance-of v7, v10, Lg/avc;

    if-eqz v7, :cond_6

    check-cast v10, Lg/avc;

    invoke-interface {v10}, Lg/avc;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OPTIONS"

    invoke-virtual {v2, v8, v7, v5}, Lg/xc;->ab(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_6
    instance-of v7, v10, Lg/drt;

    if-eqz v7, :cond_7

    check-cast v10, Lg/drt;

    invoke-interface {v10}, Lg/drt;->method()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10}, Lg/drt;->path()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10}, Lg/drt;->hasBody()Z

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Lg/xc;->ab(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_7
    instance-of v7, v10, Lg/chu;

    if-eqz v7, :cond_d

    check-cast v10, Lg/chu;

    invoke-interface {v10}, Lg/chu;->value()[Ljava/lang/String;

    move-result-object v7

    array-length v11, v7

    if-eqz v11, :cond_c

    invoke-interface {v10}, Lg/chu;->allowUnsafeNonAsciiValues()Z

    move-result v10

    new-instance v11, Lg/ais;

    invoke-direct {v11, v5}, Lg/ais;-><init>(I)V

    array-length v12, v7

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_b

    aget-object v14, v7, v13

    const/16 v15, 0x3a

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/4 v9, -0x1

    if-eq v15, v9, :cond_a

    if-eqz v15, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v8

    if-eq v15, v9, :cond_a

    invoke-virtual {v14, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Content-Type"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    :try_start_0
    sget-object v9, Lg/dpd;->a:Ljava/util/regex/Pattern;

    invoke-static {v14}, Lg/acr;->bb(Ljava/lang/String;)Lg/dpd;

    move-result-object v9

    iput-object v9, v2, Lg/xc;->k:Lg/dpd;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v14, v2, v5

    const-string v3, "Malformed content type: %s"

    invoke-static {v1, v0, v3, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_8
    if-eqz v10, :cond_9

    invoke-virtual {v11, v9, v14}, Lg/ais;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v11, v9, v14}, Lg/ais;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_a
    new-array v0, v8, [Ljava/lang/Object;

    aput-object v14, v0, v5

    const-string v2, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    const/4 v7, 0x0

    invoke-static {v1, v7, v2, v0}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_b
    invoke-virtual {v11}, Lg/ais;->d()Lg/dvq;

    move-result-object v7

    iput-object v7, v2, Lg/xc;->v:Lg/dvq;

    goto :goto_3

    :cond_c
    const/4 v7, 0x0

    const-string v0, "@Headers annotation is empty."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_d
    const/4 v7, 0x0

    instance-of v9, v10, Lg/axp;

    const-string v11, "Only one encoding annotation is allowed."

    if-eqz v9, :cond_f

    iget-boolean v9, v2, Lg/xc;->u:Z

    if-nez v9, :cond_e

    iput-boolean v8, v2, Lg/xc;->z:Z

    goto :goto_3

    :cond_e
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v1, v7, v11, v0}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_f
    instance-of v9, v10, Lg/fi;

    if-eqz v9, :cond_11

    iget-boolean v9, v2, Lg/xc;->z:Z

    if-nez v9, :cond_10

    iput-boolean v8, v2, Lg/xc;->u:Z

    goto :goto_3

    :cond_10
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v1, v7, v11, v0}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_11
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_12
    iget-object v4, v2, Lg/xc;->e:Ljava/lang/String;

    if-eqz v4, :cond_80

    iget-boolean v4, v2, Lg/xc;->p:Z

    if-nez v4, :cond_15

    iget-boolean v4, v2, Lg/xc;->z:Z

    if-nez v4, :cond_14

    iget-boolean v4, v2, Lg/xc;->u:Z

    if-nez v4, :cond_13

    goto :goto_4

    :cond_13
    const-string v0, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_14
    const/4 v7, 0x0

    const-string v0, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_15
    :goto_4
    iget-object v4, v2, Lg/xc;->i:[[Ljava/lang/annotation/Annotation;

    array-length v6, v4

    new-array v9, v6, [Lg/kj;

    iput-object v9, v2, Lg/xc;->m:[Lg/kj;

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_69

    iget-object v11, v2, Lg/xc;->m:[Lg/kj;

    iget-object v12, v2, Lg/xc;->n:[Ljava/lang/reflect/Type;

    aget-object v12, v12, v10

    aget-object v13, v4, v10

    if-ne v10, v9, :cond_16

    const/4 v14, 0x1

    goto :goto_6

    :cond_16
    const/4 v14, 0x0

    :goto_6
    if-eqz v13, :cond_66

    array-length v15, v13

    const/16 v16, 0x0

    :goto_7
    if-ge v5, v15, :cond_65

    aget-object v8, v13, v5

    move-object/from16 v19, v4

    instance-of v4, v8, Lg/auy;

    move/from16 v20, v4

    const-string v4, "@Path parameters may not be used with @Url."

    move/from16 v21, v5

    const-class v5, Ljava/lang/String;

    if-eqz v20, :cond_1f

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    iget-boolean v8, v2, Lg/xc;->f:Z

    if-nez v8, :cond_1e

    iget-boolean v8, v2, Lg/xc;->t:Z

    if-nez v8, :cond_1d

    iget-boolean v4, v2, Lg/xc;->d:Z

    if-nez v4, :cond_1c

    iget-boolean v4, v2, Lg/xc;->h:Z

    if-nez v4, :cond_1b

    iget-boolean v4, v2, Lg/xc;->q:Z

    if-nez v4, :cond_1a

    iget-object v4, v2, Lg/xc;->o:Ljava/lang/String;

    if-nez v4, :cond_19

    const/4 v4, 0x1

    iput-boolean v4, v2, Lg/xc;->f:Z

    const-class v4, Lg/eyn;

    if-eq v12, v4, :cond_17

    if-eq v12, v5, :cond_17

    const-class v4, Ljava/net/URI;

    if-eq v12, v4, :cond_17

    instance-of v4, v12, Ljava/lang/Class;

    if-eqz v4, :cond_18

    move-object v4, v12

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.Uri"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    const/4 v5, 0x0

    goto :goto_8

    :cond_18
    const-string v0, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    const/4 v5, 0x0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :goto_8
    new-instance v4, Lg/lf;

    const/4 v8, 0x1

    invoke-direct {v4, v1, v10, v8}, Lg/lf;-><init>(Ljava/lang/reflect/Method;II)V

    move/from16 v20, v6

    :goto_9
    move-object/from16 v23, v7

    move/from16 v24, v9

    move-object/from16 v25, v11

    move/from16 v22, v14

    move/from16 v26, v15

    goto/16 :goto_10

    :cond_19
    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-object v0, v2, Lg/xc;->e:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const-string v0, "@Url cannot be used with @%s URL"

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1a
    const/4 v5, 0x0

    const-string v0, "A @Url parameter must not come after a @QueryMap."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v5, 0x0

    const-string v0, "A @Url parameter must not come after a @QueryName."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1c
    const/4 v5, 0x0

    const-string v0, "A @Url parameter must not come after a @Query."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1d
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v1, v10, v4, v0}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1e
    const/4 v5, 0x0

    const-string v0, "Multiple @Url method annotations found."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1f
    move/from16 v20, v6

    instance-of v6, v8, Lg/dfd;

    move/from16 v22, v6

    iget-object v6, v2, Lg/xc;->j:Lg/daw;

    if-eqz v22, :cond_27

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    iget-boolean v5, v2, Lg/xc;->d:Z

    if-nez v5, :cond_26

    iget-boolean v5, v2, Lg/xc;->h:Z

    if-nez v5, :cond_25

    iget-boolean v5, v2, Lg/xc;->q:Z

    if-nez v5, :cond_24

    iget-boolean v5, v2, Lg/xc;->f:Z

    if-nez v5, :cond_23

    iget-object v4, v2, Lg/xc;->o:Ljava/lang/String;

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    iput-boolean v4, v2, Lg/xc;->t:Z

    check-cast v8, Lg/dfd;

    invoke-interface {v8}, Lg/dfd;->value()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lg/xc;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, v2, Lg/xc;->l:Ljava/util/LinkedHashSet;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v6, v12, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v5, Lg/avf;

    iget-object v6, v2, Lg/xc;->w:Ljava/lang/reflect/Method;

    invoke-interface {v8}, Lg/dfd;->encoded()Z

    move-result v8

    invoke-direct {v5, v6, v10, v4, v8}, Lg/avf;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;Z)V

    move-object v4, v5

    goto/16 :goto_9

    :cond_20
    iget-object v0, v2, Lg/xc;->o:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v8, 0x1

    aput-object v4, v2, v8

    const-string v0, "URL \"%s\" does not contain \"{%s}\"."

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_21
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    sget-object v0, Lg/xc;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object v4, v2, v8

    const-string v0, "@Path parameter name must match %s. Found: %s"

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_22
    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-object v0, v2, Lg/xc;->e:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const-string v0, "@Path can only be used with relative url on @%s"

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_23
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v1, v10, v4, v0}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_24
    const/4 v5, 0x0

    const-string v0, "A @Path parameter must not come after a @QueryMap."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_25
    const/4 v5, 0x0

    const-string v0, "A @Path parameter must not come after a @QueryName."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_26
    const/4 v5, 0x0

    const-string v0, "A @Path parameter must not come after a @Query."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_27
    instance-of v4, v8, Lg/deo;

    move/from16 v22, v4

    const-string v4, "<String>)"

    move/from16 v24, v9

    const-string v9, " must include generic type (e.g., "

    move-object/from16 v25, v11

    const-class v11, Ljava/lang/Iterable;

    if-eqz v22, :cond_2b

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    check-cast v8, Lg/deo;

    invoke-interface {v8}, Lg/deo;->value()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8}, Lg/deo;->encoded()Z

    move-result v8

    move/from16 v22, v14

    invoke-static {v12}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    move/from16 v26, v15

    const/4 v15, 0x1

    iput-boolean v15, v2, Lg/xc;->d:Z

    invoke-virtual {v11, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_29

    instance-of v11, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_28

    move-object v4, v12

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-static {v11, v4}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v6, v4, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/ss;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v8, v6}, Lg/ss;-><init>(Ljava/lang/String;ZI)V

    new-instance v5, Lg/dmx;

    invoke-direct {v5, v4, v11}, Lg/dmx;-><init>(Lg/kj;I)V

    :goto_a
    move-object v4, v5

    :goto_b
    move-object/from16 v23, v7

    goto/16 :goto_10

    :cond_28
    const/4 v11, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_29
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lg/xc;->aa(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/ss;

    const/4 v9, 0x2

    invoke-direct {v4, v5, v8, v9}, Lg/ss;-><init>(Ljava/lang/String;ZI)V

    new-instance v5, Lg/dmx;

    const/4 v8, 0x1

    invoke-direct {v5, v4, v8}, Lg/dmx;-><init>(Lg/kj;I)V

    goto :goto_a

    :cond_2a
    const/4 v9, 0x2

    invoke-virtual {v6, v12, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/ss;

    invoke-direct {v4, v5, v8, v9}, Lg/ss;-><init>(Ljava/lang/String;ZI)V

    goto :goto_b

    :cond_2b
    move/from16 v22, v14

    move/from16 v26, v15

    instance-of v14, v8, Lg/xv;

    if-eqz v14, :cond_2f

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    check-cast v8, Lg/xv;

    invoke-interface {v8}, Lg/xv;->encoded()Z

    move-result v5

    invoke-static {v12}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    const/4 v15, 0x1

    iput-boolean v15, v2, Lg/xc;->h:Z

    invoke-virtual {v11, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2d

    instance-of v11, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_2c

    move-object v4, v12

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-static {v11, v4}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v6, v4, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/cu;

    invoke-direct {v4, v5}, Lg/cu;-><init>(Z)V

    new-instance v5, Lg/dmx;

    invoke-direct {v5, v4, v11}, Lg/dmx;-><init>(Lg/kj;I)V

    goto/16 :goto_a

    :cond_2c
    const/4 v11, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2d
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lg/xc;->aa(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/cu;

    invoke-direct {v4, v5}, Lg/cu;-><init>(Z)V

    new-instance v5, Lg/dmx;

    const/4 v8, 0x1

    invoke-direct {v5, v4, v8}, Lg/dmx;-><init>(Lg/kj;I)V

    goto/16 :goto_a

    :cond_2e
    invoke-virtual {v6, v12, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/cu;

    invoke-direct {v4, v5}, Lg/cu;-><init>(Z)V

    goto/16 :goto_b

    :cond_2f
    instance-of v14, v8, Lg/fez;

    const-string v15, "Map must include generic types (e.g., Map<String, String>)"

    move/from16 v27, v14

    const-class v14, Ljava/util/Map;

    if-eqz v27, :cond_33

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    invoke-static {v12}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x1

    iput-boolean v9, v2, Lg/xc;->q:Z

    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_32

    invoke-static {v12, v4}, Lg/aky;->ao(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    instance-of v11, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_31

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-static {v11, v4}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v14

    if-ne v5, v14, :cond_30

    invoke-static {v9, v4}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v6, v4, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/ecg;

    check-cast v8, Lg/fez;

    invoke-interface {v8}, Lg/fez;->encoded()Z

    move-result v5

    const/4 v6, 0x2

    invoke-direct {v4, v1, v10, v5, v6}, Lg/ecg;-><init>(Ljava/lang/reflect/Method;IZI)V

    goto/16 :goto_b

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@QueryMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_31
    const/4 v11, 0x0

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v15, v0}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_32
    const/4 v11, 0x0

    const-string v0, "@QueryMap parameter type must be Map."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_33
    move-object/from16 v23, v7

    instance-of v7, v8, Lg/dgt;

    if-eqz v7, :cond_37

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    check-cast v8, Lg/dgt;

    invoke-interface {v8}, Lg/dgt;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_35

    instance-of v11, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_34

    move-object v4, v12

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-static {v11, v4}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v6, v4, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/ss;

    invoke-interface {v8}, Lg/dgt;->allowUnsafeNonAsciiValues()Z

    move-result v6

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v8}, Lg/ss;-><init>(Ljava/lang/String;ZI)V

    new-instance v5, Lg/dmx;

    invoke-direct {v5, v4, v11}, Lg/dmx;-><init>(Lg/kj;I)V

    :goto_c
    move-object v4, v5

    goto/16 :goto_10

    :cond_34
    const/4 v11, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_35
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lg/xc;->aa(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/ss;

    invoke-interface {v8}, Lg/dgt;->allowUnsafeNonAsciiValues()Z

    move-result v6

    const/4 v15, 0x1

    invoke-direct {v4, v5, v6, v15}, Lg/ss;-><init>(Ljava/lang/String;ZI)V

    new-instance v5, Lg/dmx;

    invoke-direct {v5, v4, v15}, Lg/dmx;-><init>(Lg/kj;I)V

    goto :goto_c

    :cond_36
    const/4 v15, 0x1

    invoke-virtual {v6, v12, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/ss;

    invoke-interface {v8}, Lg/dgt;->allowUnsafeNonAsciiValues()Z

    move-result v6

    invoke-direct {v4, v5, v6, v15}, Lg/ss;-><init>(Ljava/lang/String;ZI)V

    goto/16 :goto_10

    :cond_37
    instance-of v7, v8, Lg/pl;

    if-eqz v7, :cond_3c

    const-class v4, Lg/dvq;

    if-ne v12, v4, :cond_38

    new-instance v4, Lg/lf;

    const/4 v11, 0x0

    invoke-direct {v4, v1, v10, v11}, Lg/lf;-><init>(Ljava/lang/reflect/Method;II)V

    goto/16 :goto_10

    :cond_38
    const/4 v11, 0x0

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    invoke-static {v12}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-static {v12, v4}, Lg/aky;->ao(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    instance-of v7, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_3a

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v11, v4}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v5, v7, :cond_39

    const/4 v15, 0x1

    invoke-static {v15, v4}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v6, v4, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/ecg;

    check-cast v8, Lg/pl;

    invoke-interface {v8}, Lg/pl;->allowUnsafeNonAsciiValues()Z

    move-result v5

    invoke-direct {v4, v1, v10, v5, v15}, Lg/ecg;-><init>(Ljava/lang/reflect/Method;IZI)V

    goto/16 :goto_10

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@HeaderMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3a
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v15, v0}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3b
    const-string v0, "@HeaderMap parameter type must be Map or Headers."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3c
    instance-of v7, v8, Lg/fho;

    if-eqz v7, :cond_41

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    iget-boolean v5, v2, Lg/xc;->u:Z

    if-eqz v5, :cond_40

    check-cast v8, Lg/fho;

    invoke-interface {v8}, Lg/fho;->value()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8}, Lg/fho;->encoded()Z

    move-result v7

    const/4 v8, 0x1

    iput-boolean v8, v2, Lg/xc;->y:Z

    invoke-static {v12}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_3e

    instance-of v11, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_3d

    move-object v4, v12

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-static {v11, v4}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v6, v4, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/ss;

    invoke-direct {v4, v5, v7, v11}, Lg/ss;-><init>(Ljava/lang/String;ZI)V

    new-instance v5, Lg/dmx;

    invoke-direct {v5, v4, v11}, Lg/dmx;-><init>(Lg/kj;I)V

    goto/16 :goto_c

    :cond_3d
    const/4 v11, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3e
    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lg/xc;->aa(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/ss;

    invoke-direct {v4, v5, v7, v11}, Lg/ss;-><init>(Ljava/lang/String;ZI)V

    new-instance v5, Lg/dmx;

    const/4 v8, 0x1

    invoke-direct {v5, v4, v8}, Lg/dmx;-><init>(Lg/kj;I)V

    goto/16 :goto_c

    :cond_3f
    invoke-virtual {v6, v12, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lg/ss;

    invoke-direct {v4, v5, v7, v11}, Lg/ss;-><init>(Ljava/lang/String;ZI)V

    goto/16 :goto_10

    :cond_40
    const/4 v11, 0x0

    const-string v0, "@Field parameters can only be used with form encoding."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_41
    instance-of v7, v8, Lg/gn;

    if-eqz v7, :cond_46

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    iget-boolean v4, v2, Lg/xc;->u:Z

    if-eqz v4, :cond_45

    invoke-static {v12}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-static {v12, v4}, Lg/aky;->ao(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    instance-of v7, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_43

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-static {v11, v4}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v5, v7, :cond_42

    const/4 v15, 0x1

    invoke-static {v15, v4}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v6, v4, v13}, Lg/daw;->u(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    iput-boolean v15, v2, Lg/xc;->y:Z

    new-instance v4, Lg/ecg;

    check-cast v8, Lg/gn;

    invoke-interface {v8}, Lg/gn;->encoded()Z

    move-result v5

    invoke-direct {v4, v1, v10, v5, v11}, Lg/ecg;-><init>(Ljava/lang/reflect/Method;IZI)V

    goto/16 :goto_10

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@FieldMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_43
    const/4 v11, 0x0

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v15, v0}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_44
    const/4 v11, 0x0

    const-string v0, "@FieldMap parameter type must be Map."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_45
    const/4 v11, 0x0

    const-string v0, "@FieldMap parameters can only be used with form encoding."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_46
    instance-of v7, v8, Lg/eht;

    move/from16 v27, v7

    const-class v7, Lg/bmb;

    if-eqz v27, :cond_55

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    iget-boolean v5, v2, Lg/xc;->z:Z

    if-eqz v5, :cond_54

    check-cast v8, Lg/eht;

    const/4 v15, 0x1

    iput-boolean v15, v2, Lg/xc;->c:Z

    invoke-interface {v8}, Lg/eht;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4d

    invoke-virtual {v11, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    sget-object v6, Lg/bvq;->a:Lg/bvq;

    const-string v8, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz v5, :cond_49

    instance-of v5, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_48

    move-object v4, v12

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-static {v11, v4}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_47

    new-instance v4, Lg/dmx;

    invoke-direct {v4, v6, v11}, Lg/dmx;-><init>(Lg/kj;I)V

    goto/16 :goto_10

    :cond_47
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v8, v0}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_49
    const/4 v11, 0x0

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4a

    new-instance v4, Lg/dmx;

    const/4 v8, 0x1

    invoke-direct {v4, v6, v8}, Lg/dmx;-><init>(Lg/kj;I)V

    goto/16 :goto_10

    :cond_4a
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v8, v0}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4b
    invoke-virtual {v7, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4c

    move-object v4, v6

    goto/16 :goto_10

    :cond_4c
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v8, v0}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4d
    const-string v15, "form-data; name=\""

    move-object/from16 v27, v8

    const-string v8, "\""

    invoke-static {v15, v5, v8}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "Content-Transfer-Encoding"

    invoke-interface/range {v27 .. v27}, Lg/eht;->encoding()Ljava/lang/String;

    move-result-object v15

    const-string v0, "Content-Disposition"

    filled-new-array {v0, v5, v8, v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/dyd;->aj([Ljava/lang/String;)Lg/dvq;

    move-result-object v0

    invoke-virtual {v11, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    const-string v8, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v5, :cond_50

    instance-of v5, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_4f

    move-object v4, v12

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-static {v11, v4}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_4e

    invoke-virtual {v6, v4, v13, v3}, Lg/daw;->w(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lg/eya;

    move-result-object v4

    new-instance v5, Lg/rk;

    invoke-direct {v5, v1, v10, v0, v4}, Lg/rk;-><init>(Ljava/lang/reflect/Method;ILg/dvq;Lg/eya;)V

    new-instance v0, Lg/dmx;

    invoke-direct {v0, v5, v11}, Lg/dmx;-><init>(Lg/kj;I)V

    :goto_d
    move-object v4, v0

    goto/16 :goto_10

    :cond_4e
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v8, v0}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_50
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lg/xc;->aa(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_51

    invoke-virtual {v6, v4, v13, v3}, Lg/daw;->w(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lg/eya;

    move-result-object v4

    new-instance v5, Lg/rk;

    invoke-direct {v5, v1, v10, v0, v4}, Lg/rk;-><init>(Ljava/lang/reflect/Method;ILg/dvq;Lg/eya;)V

    new-instance v0, Lg/dmx;

    const/4 v8, 0x1

    invoke-direct {v0, v5, v8}, Lg/dmx;-><init>(Lg/kj;I)V

    goto :goto_d

    :cond_51
    const/4 v11, 0x0

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v8, v0}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_52
    const/4 v11, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_53

    invoke-virtual {v6, v12, v13, v3}, Lg/daw;->w(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lg/eya;

    move-result-object v4

    new-instance v5, Lg/rk;

    invoke-direct {v5, v1, v10, v0, v4}, Lg/rk;-><init>(Ljava/lang/reflect/Method;ILg/dvq;Lg/eya;)V

    goto/16 :goto_c

    :cond_53
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v8, v0}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_54
    const/4 v11, 0x0

    const-string v0, "@Part parameters can only be used with multipart encoding."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_55
    instance-of v0, v8, Lg/qr;

    if-eqz v0, :cond_5b

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    iget-boolean v0, v2, Lg/xc;->z:Z

    if-eqz v0, :cond_5a

    const/4 v4, 0x1

    iput-boolean v4, v2, Lg/xc;->c:Z

    invoke-static {v12}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_59

    invoke-static {v12, v0}, Lg/aky;->ao(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v9, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_58

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-static {v11, v0}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v9

    if-ne v5, v9, :cond_57

    invoke-static {v4, v0}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_56

    invoke-virtual {v6, v0, v13, v3}, Lg/daw;->w(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lg/eya;

    move-result-object v0

    check-cast v8, Lg/qr;

    new-instance v4, Lg/rk;

    invoke-interface {v8}, Lg/qr;->encoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v10, v0, v5}, Lg/rk;-><init>(Ljava/lang/reflect/Method;ILg/eya;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_56
    const-string v0, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_57
    const/4 v11, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@PartMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_58
    const/4 v11, 0x0

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v15, v0}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_59
    const/4 v11, 0x0

    const-string v0, "@PartMap parameter type must be Map."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5a
    const/4 v11, 0x0

    const-string v0, "@PartMap parameters can only be used with multipart encoding."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5b
    instance-of v0, v8, Lg/bnt;

    if-eqz v0, :cond_5e

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    iget-boolean v0, v2, Lg/xc;->u:Z

    if-nez v0, :cond_5d

    iget-boolean v0, v2, Lg/xc;->z:Z

    if-nez v0, :cond_5d

    iget-boolean v0, v2, Lg/xc;->r:Z

    if-nez v0, :cond_5c

    :try_start_1
    invoke-virtual {v6, v12, v13, v3}, Lg/daw;->w(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lg/eya;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x1

    iput-boolean v8, v2, Lg/xc;->r:Z

    new-instance v4, Lg/ckt;

    invoke-direct {v4, v1, v10, v0}, Lg/ckt;-><init>(Ljava/lang/reflect/Method;ILg/eya;)V

    goto/16 :goto_10

    :catch_1
    move-exception v0

    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v12, v2, v11

    const-string v3, "Unable to create @Body converter for %s"

    invoke-static {v1, v0, v10, v3, v2}, Lg/aky;->k(Ljava/lang/reflect/Method;Ljava/lang/Exception;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5c
    const/4 v11, 0x0

    const-string v0, "Multiple @Body method annotations found."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5d
    const/4 v11, 0x0

    const-string v0, "@Body parameters cannot be used with form or multi-part encoding."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5e
    instance-of v0, v8, Lg/arv;

    if-eqz v0, :cond_62

    invoke-virtual {v2, v10, v12}, Lg/xc;->ac(ILjava/lang/reflect/Type;)V

    invoke-static {v12}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lg/xc;->aa(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v4, v10, -0x1

    :goto_e
    if-ltz v4, :cond_61

    iget-object v5, v2, Lg/xc;->m:[Lg/kj;

    aget-object v5, v5, v4

    instance-of v6, v5, Lg/ftu;

    if-eqz v6, :cond_60

    check-cast v5, Lg/ftu;

    iget-object v5, v5, Lg/ftu;->a:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    goto :goto_f

    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@Tag type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is duplicate of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lg/bfh;->b:Lg/fbc;

    invoke-virtual {v0, v1, v4}, Lg/fbc;->f(Ljava/lang/reflect/Method;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and would always overwrite its value."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_60
    :goto_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_61
    new-instance v4, Lg/ftu;

    invoke-direct {v4, v0}, Lg/ftu;-><init>(Ljava/lang/Class;)V

    goto :goto_10

    :cond_62
    const/4 v4, 0x0

    :goto_10
    if-nez v4, :cond_63

    goto :goto_11

    :cond_63
    if-nez v16, :cond_64

    move-object/from16 v16, v4

    :goto_11
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v19

    move/from16 v6, v20

    move/from16 v14, v22

    move-object/from16 v7, v23

    move/from16 v9, v24

    move-object/from16 v11, v25

    move/from16 v15, v26

    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_64
    const-string v0, "Multiple Retrofit annotations found, only one allowed."

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_65
    :goto_12
    move-object/from16 v19, v4

    move/from16 v20, v6

    move-object/from16 v23, v7

    move/from16 v24, v9

    move-object/from16 v25, v11

    move/from16 v22, v14

    goto :goto_13

    :cond_66
    const/16 v16, 0x0

    goto :goto_12

    :goto_13
    if-nez v16, :cond_68

    if-eqz v22, :cond_67

    :try_start_2
    invoke-static {v12}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v4, Lg/bdp;

    if-ne v0, v4, :cond_67

    const/4 v8, 0x1

    iput-boolean v8, v2, Lg/xc;->x:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v16, 0x0

    goto :goto_14

    :catch_2
    :cond_67
    const-string v0, "No Retrofit annotation found."

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v10, v0, v2}, Lg/aky;->am(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_68
    :goto_14
    aput-object v16, v25, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v19

    move/from16 v6, v20

    move-object/from16 v7, v23

    move/from16 v9, v24

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_5

    :cond_69
    move-object/from16 v23, v7

    iget-object v0, v2, Lg/xc;->o:Ljava/lang/String;

    if-nez v0, :cond_6b

    iget-boolean v0, v2, Lg/xc;->f:Z

    if-eqz v0, :cond_6a

    goto :goto_15

    :cond_6a
    iget-object v0, v2, Lg/xc;->e:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v0, v2, v17

    const-string v0, "Missing either @%s URL or @Url parameter."

    const/4 v7, 0x0

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_6b
    :goto_15
    iget-boolean v0, v2, Lg/xc;->u:Z

    if-nez v0, :cond_6c

    iget-boolean v3, v2, Lg/xc;->z:Z

    if-nez v3, :cond_6c

    iget-boolean v3, v2, Lg/xc;->p:Z

    if-nez v3, :cond_6c

    iget-boolean v3, v2, Lg/xc;->r:Z

    if-nez v3, :cond_6d

    :cond_6c
    const/4 v7, 0x0

    const/4 v11, 0x0

    goto :goto_16

    :cond_6d
    const-string v0, "Non-body HTTP method cannot contain @Body."

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :goto_16
    if-eqz v0, :cond_6f

    iget-boolean v0, v2, Lg/xc;->y:Z

    if-eqz v0, :cond_6e

    goto :goto_17

    :cond_6e
    const-string v0, "Form-encoded method must contain at least one @Field."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_6f
    :goto_17
    iget-boolean v0, v2, Lg/xc;->z:Z

    if-eqz v0, :cond_71

    iget-boolean v0, v2, Lg/xc;->c:Z

    if-eqz v0, :cond_70

    goto :goto_18

    :cond_70
    const-string v0, "Multipart method must contain at least one @Part."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_71
    :goto_18
    new-instance v0, Lg/bku;

    invoke-direct {v0, v2}, Lg/bku;-><init>(Lg/xc;)V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lg/aky;->ah(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-nez v3, :cond_7f

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_7e

    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    const-class v3, Lg/dgi;

    const-class v4, Lg/anx;

    iget-boolean v5, v0, Lg/bku;->d:Z

    if-eqz v5, :cond_77

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    array-length v7, v6

    const/16 v18, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v11, 0x0

    aget-object v6, v6, v11

    instance-of v7, v6, Ljava/lang/reflect/WildcardType;

    if-eqz v7, :cond_72

    check-cast v6, Ljava/lang/reflect/WildcardType;

    invoke-interface {v6}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v6, v6, v11

    :cond_72
    invoke-static {v6}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lg/czh;

    if-ne v7, v4, :cond_73

    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_73

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v11, v6}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto :goto_1a

    :cond_73
    invoke-static {v6}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    if-eq v7, v8, :cond_76

    sget-boolean v7, Lg/aky;->a:Z

    if-eqz v7, :cond_74

    if-ne v6, v3, :cond_74

    const/4 v7, 0x1

    goto :goto_19

    :cond_74
    const/4 v7, 0x0

    :goto_19
    move v9, v7

    const/4 v7, 0x0

    :goto_1a
    new-instance v10, Lg/cnn;

    const/4 v15, 0x1

    new-array v11, v15, [Ljava/lang/reflect/Type;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v6, 0x0

    invoke-direct {v10, v6, v8, v11}, Lg/cnn;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    const-class v6, Lg/brc;

    invoke-static {v2, v6}, Lg/aky;->r([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_75

    goto :goto_1b

    :cond_75
    array-length v6, v2

    add-int/2addr v6, v15

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    sget-object v8, Lg/aqy;->a:Lg/aqy;

    aput-object v8, v6, v12

    array-length v8, v2

    invoke-static {v2, v12, v6, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    :goto_1b
    move v6, v9

    :goto_1c
    move-object/from16 v8, p0

    goto :goto_1d

    :cond_76
    const/4 v12, 0x0

    const/4 v15, 0x1

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v12, v6}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v0, v2, v12

    const-string v0, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s"

    const/4 v7, 0x0

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_77
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_1c

    :goto_1d
    :try_start_3
    invoke-virtual {v8, v10, v2}, Lg/daw;->q(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lg/eeg;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    invoke-interface {v2}, Lg/eeg;->b()Ljava/lang/reflect/Type;

    move-result-object v9

    const-class v10, Lg/enb;

    if-eq v9, v10, :cond_7d

    if-eq v9, v4, :cond_7c

    iget-object v4, v0, Lg/bku;->c:Ljava/lang/String;

    move-object/from16 v10, v23

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const-class v4, Ljava/lang/Void;

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    sget-boolean v4, Lg/aky;->a:Z

    if-eqz v4, :cond_78

    if-ne v9, v3, :cond_78

    goto :goto_1e

    :cond_78
    const-string v0, "HEAD method must use Void or Unit as response type."

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_79
    :goto_1e
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    :try_start_4
    invoke-virtual {v8, v9, v3}, Lg/daw;->p(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lg/eya;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    iget-object v1, v8, Lg/daw;->f:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lg/eyd;

    if-nez v5, :cond_7a

    new-instance v1, Lg/exm;

    const/4 v6, 0x0

    move-object v5, v2

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lg/exm;-><init>(Lg/bku;Lg/eyd;Lg/eya;Lg/eeg;I)V

    return-object v1

    :cond_7a
    move-object v5, v2

    move-object v2, v0

    if-eqz v7, :cond_7b

    new-instance v1, Lg/exm;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lg/exm;-><init>(Lg/bku;Lg/eyd;Lg/eya;Lg/eeg;I)V

    return-object v1

    :cond_7b
    new-instance v1, Lg/bwq;

    invoke-direct/range {v1 .. v6}, Lg/bwq;-><init>(Lg/bku;Lg/eyd;Lg/eya;Lg/eeg;Z)V

    return-object v1

    :catch_3
    move-exception v0

    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v2, v11

    const-string v3, "Unable to create converter for %s"

    invoke-static {v1, v0, v3, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7c
    const/4 v11, 0x0

    const-string v0, "Response must include generic type (e.g., Response<String>)"

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :catch_4
    move-exception v0

    const/4 v11, 0x0

    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v10, v2, v11

    const-string v3, "Unable to create call adapter for %s"

    invoke-static {v1, v0, v3, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7e
    const/4 v7, 0x0

    const/4 v11, 0x0

    const-string v0, "Service methods cannot return void."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7f
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v2, v0, v11

    const-string v2, "Method return type must not include a type variable or wildcard: %s"

    invoke-static {v1, v7, v2, v0}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_80
    const/4 v7, 0x0

    const/4 v11, 0x0

    const-string v0, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v7, v0, v2}, Lg/aky;->w(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public abstract c(Lg/fdw;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
