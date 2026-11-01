.class public final Lg/fxp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/xx;


# static fields
.field public static final a:Lg/cec;

.field public static final c:Lg/cec;

.field public static final d:Lg/cec;

.field public static final e:Lg/fxp;

.field public static final f:Lg/cec;

.field public static final g:Lg/cec;

.field public static final h:Lg/cec;

.field public static final i:Lg/cec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/fxp;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/fxp;->e:Lg/fxp;

    const-string v0, "eventTimeMs"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fxp;->g:Lg/cec;

    const-string v0, "eventCode"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fxp;->h:Lg/cec;

    const-string v0, "eventUptimeMs"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fxp;->c:Lg/cec;

    const-string v0, "sourceExtension"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fxp;->d:Lg/cec;

    const-string v0, "sourceExtensionJsonProto3"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fxp;->f:Lg/cec;

    const-string v0, "timezoneOffsetSeconds"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fxp;->i:Lg/cec;

    const-string v0, "networkConnectionInfo"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fxp;->a:Lg/cec;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lg/dux;

    check-cast p2, Lg/dmp;

    check-cast p1, Lg/bcj;

    iget-wide v0, p1, Lg/bcj;->c:J

    sget-object v2, Lg/fxp;->g:Lg/cec;

    invoke-interface {p2, v2, v0, v1}, Lg/dmp;->l(Lg/cec;J)Lg/dmp;

    sget-object v0, Lg/fxp;->h:Lg/cec;

    iget-object v1, p1, Lg/bcj;->e:Ljava/lang/Integer;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/fxp;->c:Lg/cec;

    iget-wide v1, p1, Lg/bcj;->f:J

    invoke-interface {p2, v0, v1, v2}, Lg/dmp;->l(Lg/cec;J)Lg/dmp;

    sget-object v0, Lg/fxp;->d:Lg/cec;

    iget-object v1, p1, Lg/bcj;->a:[B

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/fxp;->f:Lg/cec;

    iget-object v1, p1, Lg/bcj;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/fxp;->i:Lg/cec;

    iget-wide v1, p1, Lg/bcj;->d:J

    invoke-interface {p2, v0, v1, v2}, Lg/dmp;->l(Lg/cec;J)Lg/dmp;

    sget-object v0, Lg/fxp;->a:Lg/cec;

    iget-object p1, p1, Lg/bcj;->g:Lg/ih;

    invoke-interface {p2, v0, p1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    return-void
.end method
