.class public final Lg/fbx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/xx;


# static fields
.field public static final a:Lg/fbx;

.field public static final c:Lg/cec;

.field public static final d:Lg/cec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/fbx;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/fbx;->a:Lg/fbx;

    const-string v0, "clientType"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fbx;->c:Lg/cec;

    const-string v0, "androidClientInfo"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fbx;->d:Lg/cec;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lg/cij;

    check-cast p2, Lg/dmp;

    check-cast p1, Lg/bsp;

    iget-object v0, p1, Lg/bsp;->a:Lg/bkh;

    sget-object v1, Lg/fbx;->c:Lg/cec;

    invoke-interface {p2, v1, v0}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/fbx;->d:Lg/cec;

    iget-object p1, p1, Lg/bsp;->b:Lg/ewl;

    invoke-interface {p2, v0, p1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    return-void
.end method
