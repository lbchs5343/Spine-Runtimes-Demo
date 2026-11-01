.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lg/xa;)Lg/gle;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lg/se;)Lg/gle;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lg/se;)Lg/gle;
    .locals 3

    new-instance v0, Lg/cyc;

    const-class v1, Lg/rm;

    invoke-interface {p0, v1}, Lg/se;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/rm;

    const-class v2, Lg/bsm;

    invoke-interface {p0, v2}, Lg/se;->c(Ljava/lang/Class;)Lg/boa;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lg/cyc;-><init>(Lg/rm;Lg/boa;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/bdf;",
            ">;"
        }
    .end annotation

    new-instance v0, Lg/cop;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lg/gle;

    invoke-direct {v0, v3, v2}, Lg/cop;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    new-instance v2, Lg/djj;

    const-class v3, Lg/rm;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lg/djj;-><init>(Ljava/lang/Class;II)V

    invoke-virtual {v0, v2}, Lg/cop;->i(Lg/djj;)V

    new-instance v2, Lg/djj;

    const-class v3, Lg/bsm;

    invoke-direct {v2, v3, v1, v4}, Lg/djj;-><init>(Ljava/lang/Class;II)V

    invoke-virtual {v0, v2}, Lg/cop;->i(Lg/djj;)V

    new-instance v2, Lg/bfb;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lg/bfb;-><init>(I)V

    iput-object v2, v0, Lg/cop;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/cop;->k()Lg/bdf;

    move-result-object v0

    new-instance v2, Lg/ao;

    invoke-direct {v2, v1}, Lg/ao;-><init>(I)V

    new-array v3, v1, [Ljava/lang/Class;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    const-class v7, Lg/ao;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v12, Lg/aoi;

    const/16 v3, 0x8

    invoke-direct {v12, v3, v2}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    new-instance v7, Lg/bdf;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v7 .. v13}, Lg/bdf;-><init>(Ljava/util/Set;Ljava/util/Set;IILg/avn;Ljava/util/Set;)V

    const-string v2, "fire-installations"

    const-string v3, "17.0.1"

    invoke-static {v2, v3}, Lg/ckd;->aw(Ljava/lang/String;Ljava/lang/String;)Lg/bdf;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lg/bdf;

    aput-object v0, v3, v1

    aput-object v7, v3, v4

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
