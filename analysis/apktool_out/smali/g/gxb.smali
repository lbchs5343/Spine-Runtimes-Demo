.class public final Lg/gxb;
.super Lg/sm;
.source "SourceFile"


# static fields
.field public static final m:Lg/gxb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/gxb;

    invoke-direct {v0}, Lg/sm;-><init>()V

    sput-object v0, Lg/gxb;->m:Lg/gxb;

    return-void
.end method


# virtual methods
.method public final d(Lg/fky;)V
    .locals 0

    return-void
.end method

.method public final e(Lg/acq;)Ljava/util/List;
    .locals 0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final f()Ljava/util/List;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public final g(Lg/csv;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(Lg/fky;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final k(Lg/fky;)Lg/eue;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final l(Lg/csv;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
