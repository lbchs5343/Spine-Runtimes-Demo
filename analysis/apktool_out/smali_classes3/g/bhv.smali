.class public final Lg/bhv;
.super Lg/ehi;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lg/deb;

.field public final f:Lg/px;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/px;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bhv;->f:Lg/px;

    iput-object p2, p0, Lg/bhv;->g:Ljava/lang/String;

    iput-object p3, p0, Lg/bhv;->a:Ljava/lang/String;

    const/4 p2, 0x1

    iget-object p1, p1, Lg/px;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cpv;

    new-instance p2, Lg/ajo;

    invoke-direct {p2, p1, p0}, Lg/ajo;-><init>(Lg/cpv;Lg/bhv;)V

    invoke-static {p2}, Lg/baf;->ai(Lg/cpv;)Lg/deb;

    move-result-object p1

    iput-object p1, p0, Lg/bhv;->b:Lg/deb;

    return-void
.end method


# virtual methods
.method public final c()Lg/dsy;
    .locals 1

    iget-object v0, p0, Lg/bhv;->b:Lg/deb;

    return-object v0
.end method

.method public final d()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lg/bhv;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v3, Lg/erq;->c:[B

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public final e()Lg/dpd;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lg/bhv;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lg/dpd;->a:Ljava/util/regex/Pattern;

    :try_start_0
    invoke-static {v1}, Lg/acr;->bb(Ljava/lang/String;)Lg/dpd;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method
