.class public final Lg/dmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/boa;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public volatile b:Ljava/lang/Object;

.field public volatile c:Lg/boa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dmg;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/boa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/dmg;->a:Ljava/lang/Object;

    iput-object v0, p0, Lg/dmg;->b:Ljava/lang/Object;

    iput-object p1, p0, Lg/dmg;->c:Lg/boa;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/dmg;->b:Ljava/lang/Object;

    sget-object v1, Lg/dmg;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/dmg;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/dmg;->c:Lg/boa;

    invoke-interface {v0}, Lg/boa;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lg/dmg;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lg/dmg;->c:Lg/boa;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method
