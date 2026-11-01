.class public final Lg/kr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dqc;


# instance fields
.field public b:I

.field public c:Lg/geq;

.field public d:Lg/geq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dqc;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lg/dqc;-><init>(I)V

    sput-object v0, Lg/kr;->a:Lg/dqc;

    return-void
.end method

.method public static e()Lg/kr;
    .locals 1

    sget-object v0, Lg/kr;->a:Lg/dqc;

    invoke-virtual {v0}, Lg/dqc;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/kr;

    if-nez v0, :cond_0

    new-instance v0, Lg/kr;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    return-object v0
.end method
