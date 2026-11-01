.class public Landroid/service/quicksettings/TileService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final ACTION_QS_TILE:Ljava/lang/String; = "android.service.quicksettings.action.QS_TILE"

.field public static final ACTION_QS_TILE_PREFERENCES:Ljava/lang/String; = "android.service.quicksettings.action.QS_TILE_PREFERENCES"

.field public static final ACTION_REQUEST_LISTENING:Ljava/lang/String; = "android.service.quicksettings.action.REQUEST_LISTENING"

.field public static final EXTRA_COMPONENT:Ljava/lang/String; = "android.service.quicksettings.extra.COMPONENT"

.field public static final EXTRA_SERVICE:Ljava/lang/String; = "service"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field public static final META_DATA_ACTIVE_TILE:Ljava/lang/String; = "android.service.quicksettings.ACTIVE_TILE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static final requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "TileService unreached method"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getQsTile()Landroid/service/quicksettings/Tile;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TileService unreached method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isLocked()Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TileService unreached method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isSecure()Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TileService unreached method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "TileService unreached method"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onClick()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TileService unreached method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStartListening()V
    .locals 0

    return-void
.end method

.method public onStopListening()V
    .locals 0

    return-void
.end method

.method public onTileAdded()V
    .locals 0

    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    return-void
.end method

.method public final setStatusIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "TileService unreached method"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final showDialog(Landroid/app/Dialog;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "TileService unreached method"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final startActivityAndCollapse(Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "TileService unreached method"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final unlockAndRun(Ljava/lang/Runnable;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "TileService unreached method"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
