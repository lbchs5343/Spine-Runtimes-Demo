.class public Lcom/google/firebase/FirebaseCommonRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const-class v12, Lg/gbg;

    invoke-virtual {v3, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    array-length v5, v2

    const/4 v8, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v2, v6

    const-string v9, "Null interface"

    invoke-static {v7, v9}, Lg/bff;->aj(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v2, Lg/djj;

    const-class v5, Lg/aj;

    const/4 v13, 0x2

    invoke-direct {v2, v5, v13, v1}, Lg/djj;-><init>(Ljava/lang/Class;II)V

    iget-object v5, v2, Lg/djj;->a:Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v10, Lg/bfb;

    const/4 v2, 0x6

    invoke-direct {v10, v2}, Lg/bfb;-><init>(I)V

    new-instance v5, Lg/bdf;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move v9, v8

    invoke-direct/range {v5 .. v11}, Lg/bdf;-><init>(Ljava/util/Set;Ljava/util/Set;IILg/avn;Ljava/util/Set;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v13, [Ljava/lang/Class;

    const-class v3, Lg/bsm;

    aput-object v3, v2, v1

    const-class v3, Lg/fxj;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lg/cop;

    const-class v5, Lg/bfq;

    invoke-direct {v3, v5, v2}, Lg/cop;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    new-instance v2, Lg/djj;

    const-class v5, Landroid/content/Context;

    invoke-direct {v2, v5, v4, v1}, Lg/djj;-><init>(Ljava/lang/Class;II)V

    invoke-virtual {v3, v2}, Lg/cop;->i(Lg/djj;)V

    new-instance v2, Lg/djj;

    const-class v5, Lg/rm;

    invoke-direct {v2, v5, v4, v1}, Lg/djj;-><init>(Ljava/lang/Class;II)V

    invoke-virtual {v3, v2}, Lg/cop;->i(Lg/djj;)V

    new-instance v2, Lg/djj;

    const-class v5, Lg/ao;

    invoke-direct {v2, v5, v13, v1}, Lg/djj;-><init>(Ljava/lang/Class;II)V

    invoke-virtual {v3, v2}, Lg/cop;->i(Lg/djj;)V

    new-instance v1, Lg/djj;

    invoke-direct {v1, v12, v4, v4}, Lg/djj;-><init>(Ljava/lang/Class;II)V

    invoke-virtual {v3, v1}, Lg/cop;->i(Lg/djj;)V

    new-instance v1, Lg/bfb;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lg/bfb;-><init>(I)V

    iput-object v1, v3, Lg/cop;->d:Ljava/lang/Object;

    invoke-virtual {v3}, Lg/cop;->k()Lg/bdf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fire-android"

    invoke-static {v2, v1}, Lg/ckd;->aw(Ljava/lang/String;Ljava/lang/String;)Lg/bdf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "fire-core"

    const-string v2, "20.1.2"

    invoke-static {v1, v2}, Lg/ckd;->aw(Ljava/lang/String;Ljava/lang/String;)Lg/bdf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-name"

    invoke-static {v2, v1}, Lg/ckd;->aw(Ljava/lang/String;Ljava/lang/String;)Lg/bdf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-model"

    invoke-static {v2, v1}, Lg/ckd;->aw(Ljava/lang/String;Ljava/lang/String;)Lg/bdf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-brand"

    invoke-static {v2, v1}, Lg/ckd;->aw(Ljava/lang/String;Ljava/lang/String;)Lg/bdf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/bfb;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lg/bfb;-><init>(I)V

    const-string v2, "android-target-sdk"

    invoke-static {v2, v1}, Lg/ckd;->i(Ljava/lang/String;Lg/bfb;)Lg/bdf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/bfb;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lg/bfb;-><init>(I)V

    const-string v2, "android-min-sdk"

    invoke-static {v2, v1}, Lg/ckd;->i(Ljava/lang/String;Lg/bfb;)Lg/bdf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/bfb;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lg/bfb;-><init>(I)V

    const-string v2, "android-platform"

    invoke-static {v2, v1}, Lg/ckd;->i(Ljava/lang/String;Lg/bfb;)Lg/bdf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/bfb;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lg/bfb;-><init>(I)V

    const-string v2, "android-installer"

    invoke-static {v2, v1}, Lg/ckd;->i(Ljava/lang/String;Lg/bfb;)Lg/bdf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    sget-object v1, Lg/bao;->a:Lg/bao;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "2.1.21"
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    const-string v2, "kotlin"

    invoke-static {v2, v1}, Lg/ckd;->aw(Ljava/lang/String;Ljava/lang/String;)Lg/bdf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Components are not allowed to depend on interfaces they themselves provide."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
