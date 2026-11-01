.class public abstract Lg/gbd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/tl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/tl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bcp;-><init>(I)V

    sput-object v0, Lg/gbd;->a:Lg/tl;

    return-void
.end method

.method public static declared-synchronized b()Landroid/net/Uri;
    .locals 5

    const-class v0, Lg/gbd;

    monitor-enter v0

    :try_start_0
    const-string v1, "com.google.android.gms.measurement"

    sget-object v2, Lg/gbd;->a:Lg/tl;

    invoke-virtual {v2, v1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    if-nez v3, :cond_0

    const-string v3, "content://com.google.android.gms.phenotype/"

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v3

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
