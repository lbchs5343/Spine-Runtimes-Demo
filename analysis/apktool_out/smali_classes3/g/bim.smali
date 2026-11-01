.class public final Lg/bim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/xx;


# static fields
.field public static final a:Lg/cec;

.field public static final c:Lg/cec;

.field public static final d:Lg/cec;

.field public static final e:Lg/cec;

.field public static final f:Lg/cec;

.field public static final g:Lg/bim;

.field public static final h:Lg/cec;

.field public static final i:Lg/cec;

.field public static final j:Lg/cec;

.field public static final k:Lg/cec;

.field public static final l:Lg/cec;

.field public static final m:Lg/cec;

.field public static final n:Lg/cec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/bim;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/bim;->g:Lg/bim;

    const-string v0, "sdkVersion"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/bim;->k:Lg/cec;

    const-string v0, "model"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/bim;->m:Lg/cec;

    const-string v0, "hardware"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/bim;->d:Lg/cec;

    const-string v0, "device"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/bim;->f:Lg/cec;

    const-string v0, "product"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/bim;->h:Lg/cec;

    const-string v0, "osBuild"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/bim;->n:Lg/cec;

    const-string v0, "manufacturer"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/bim;->a:Lg/cec;

    const-string v0, "fingerprint"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/bim;->j:Lg/cec;

    const-string v0, "locale"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/bim;->l:Lg/cec;

    const-string v0, "country"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/bim;->c:Lg/cec;

    const-string v0, "mccMnc"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/bim;->e:Lg/cec;

    const-string v0, "applicationBuild"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/bim;->i:Lg/cec;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lg/mm;

    check-cast p2, Lg/dmp;

    check-cast p1, Lg/ewl;

    iget-object v0, p1, Lg/ewl;->f:Ljava/lang/Integer;

    sget-object v1, Lg/bim;->k:Lg/cec;

    invoke-interface {p2, v1, v0}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/bim;->m:Lg/cec;

    iget-object v1, p1, Lg/ewl;->i:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/bim;->d:Lg/cec;

    iget-object v1, p1, Lg/ewl;->k:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/bim;->f:Lg/cec;

    iget-object v1, p1, Lg/ewl;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/bim;->h:Lg/cec;

    iget-object v1, p1, Lg/ewl;->e:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/bim;->n:Lg/cec;

    iget-object v1, p1, Lg/ewl;->g:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/bim;->a:Lg/cec;

    iget-object v1, p1, Lg/ewl;->l:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/bim;->j:Lg/cec;

    iget-object v1, p1, Lg/ewl;->a:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/bim;->l:Lg/cec;

    iget-object v1, p1, Lg/ewl;->h:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/bim;->c:Lg/cec;

    iget-object v1, p1, Lg/ewl;->j:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/bim;->e:Lg/cec;

    iget-object v1, p1, Lg/ewl;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/bim;->i:Lg/cec;

    iget-object p1, p1, Lg/ewl;->d:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    return-void
.end method
