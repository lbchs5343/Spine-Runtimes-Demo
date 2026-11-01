.class public final Lg/gss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/xx;


# static fields
.field public static final a:Lg/gss;

.field public static final c:Lg/cec;

.field public static final d:Lg/cec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/gss;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/gss;->a:Lg/gss;

    const-string v0, "networkType"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/gss;->c:Lg/cec;

    const-string v0, "mobileSubtype"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/gss;->d:Lg/cec;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lg/ih;

    check-cast p2, Lg/dmp;

    check-cast p1, Lg/bce;

    iget-object v0, p1, Lg/bce;->a:Lg/byo;

    sget-object v1, Lg/gss;->c:Lg/cec;

    invoke-interface {p2, v1, v0}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/gss;->d:Lg/cec;

    iget-object p1, p1, Lg/bce;->b:Lg/cme;

    invoke-interface {p2, v0, p1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    return-void
.end method
