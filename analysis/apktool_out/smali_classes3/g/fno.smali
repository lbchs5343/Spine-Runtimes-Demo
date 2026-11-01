.class public final Lg/fno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/xx;


# static fields
.field public static final a:Lg/cec;

.field public static final c:Lg/cec;

.field public static final d:Lg/cec;

.field public static final e:Lg/fno;

.field public static final f:Lg/cec;

.field public static final g:Lg/cec;

.field public static final h:Lg/cec;

.field public static final i:Lg/cec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/fno;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/fno;->e:Lg/fno;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fno;->g:Lg/cec;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fno;->h:Lg/cec;

    const-string v0, "clientInfo"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fno;->c:Lg/cec;

    const-string v0, "logSource"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fno;->d:Lg/cec;

    const-string v0, "logSourceName"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fno;->f:Lg/cec;

    const-string v0, "logEvent"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fno;->i:Lg/cec;

    const-string v0, "qosTier"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fno;->a:Lg/cec;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lg/cnt;

    check-cast p2, Lg/dmp;

    check-cast p1, Lg/dow;

    iget-wide v0, p1, Lg/dow;->c:J

    sget-object v2, Lg/fno;->g:Lg/cec;

    invoke-interface {p2, v2, v0, v1}, Lg/dmp;->l(Lg/cec;J)Lg/dmp;

    sget-object v0, Lg/fno;->h:Lg/cec;

    iget-wide v1, p1, Lg/dow;->e:J

    invoke-interface {p2, v0, v1, v2}, Lg/dmp;->l(Lg/cec;J)Lg/dmp;

    sget-object v0, Lg/fno;->c:Lg/cec;

    iget-object v1, p1, Lg/dow;->f:Lg/bsp;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/fno;->d:Lg/cec;

    iget-object v1, p1, Lg/dow;->a:Ljava/lang/Integer;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/fno;->f:Lg/cec;

    iget-object v1, p1, Lg/dow;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/fno;->i:Lg/cec;

    iget-object v1, p1, Lg/dow;->d:Ljava/util/ArrayList;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/fno;->a:Lg/cec;

    iget-object p1, p1, Lg/dow;->g:Lg/egd;

    invoke-interface {p2, v0, p1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    return-void
.end method
