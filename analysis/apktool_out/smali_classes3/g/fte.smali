.class public final Lg/fte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/xx;


# static fields
.field public static final a:Lg/fte;

.field public static final c:Lg/cec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/fte;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/fte;->a:Lg/fte;

    const-string v0, "logRequest"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    move-result-object v0

    sput-object v0, Lg/fte;->c:Lg/cec;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lg/dct;

    check-cast p2, Lg/dmp;

    check-cast p1, Lg/aeq;

    iget-object p1, p1, Lg/aeq;->a:Ljava/util/ArrayList;

    sget-object v0, Lg/fte;->c:Lg/cec;

    invoke-interface {p2, v0, p1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    return-void
.end method
