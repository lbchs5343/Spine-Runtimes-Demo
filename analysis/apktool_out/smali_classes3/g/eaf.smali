.class public final enum Lg/eaf;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic a:[Lg/eaf;

.field public static final enum zza:Lg/eaf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/eaf;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/eaf;->zza:Lg/eaf;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/eaf;

    aput-object v0, v1, v2

    sput-object v1, Lg/eaf;->a:[Lg/eaf;

    return-void
.end method

.method public static values()[Lg/eaf;
    .locals 1

    sget-object v0, Lg/eaf;->a:[Lg/eaf;

    invoke-virtual {v0}, [Lg/eaf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/eaf;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
