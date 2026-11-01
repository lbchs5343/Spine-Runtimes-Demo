package android.service.quicksettings;

import android.app.Dialog;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Icon;
import android.os.IBinder;

/* loaded from: classes.dex */
public class TileService extends Service {
    public static final String ACTION_QS_TILE = "android.service.quicksettings.action.QS_TILE";
    public static final String ACTION_QS_TILE_PREFERENCES = "android.service.quicksettings.action.QS_TILE_PREFERENCES";
    public static final String ACTION_REQUEST_LISTENING = "android.service.quicksettings.action.REQUEST_LISTENING";
    public static final String EXTRA_COMPONENT = "android.service.quicksettings.extra.COMPONENT";
    public static final String EXTRA_SERVICE = "service";
    public static final String EXTRA_TOKEN = "token";
    public static final String META_DATA_ACTIVE_TILE = "android.service.quicksettings.ACTIVE_TILE";

    public static final void requestListeningState(Context context, ComponentName componentName) {
        throw new RuntimeException("TileService unreached method");
    }

    public final Tile getQsTile() {
        throw new RuntimeException("TileService unreached method");
    }

    public final boolean isLocked() {
        throw new RuntimeException("TileService unreached method");
    }

    public final boolean isSecure() {
        throw new RuntimeException("TileService unreached method");
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("TileService unreached method");
    }

    public void onClick() {
    }

    @Override // android.app.Service
    public void onDestroy() {
        throw new RuntimeException("TileService unreached method");
    }

    public void onStartListening() {
    }

    public void onStopListening() {
    }

    public void onTileAdded() {
    }

    public void onTileRemoved() {
    }

    public final void setStatusIcon(Icon icon, String str) {
        throw new RuntimeException("TileService unreached method");
    }

    public final void showDialog(Dialog dialog) {
        throw new RuntimeException("TileService unreached method");
    }

    public final void startActivityAndCollapse(Intent intent) {
        throw new RuntimeException("TileService unreached method");
    }

    public final void unlockAndRun(Runnable runnable) {
        throw new RuntimeException("TileService unreached method");
    }
}
