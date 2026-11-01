package g;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.IBinder;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class fbn extends TileService {
    public abstract String a();

    public final void b() {
        Tile qsTile = getQsTile();
        if (qsTile == null) {
            return;
        }
        qsTile.setState(this instanceof c.d.a ? 2 : 1);
        try {
            qsTile.updateTile();
        } catch (IllegalArgumentException e2) {
            erl.ac(e2);
        }
    }

    @Override // android.service.quicksettings.TileService, android.app.Service
    public final IBinder onBind(Intent intent) {
        try {
            return super.onBind(intent);
        } catch (Exception e2) {
            erl.ac(e2);
            return null;
        }
    }

    @Override // android.service.quicksettings.TileService
    public final void onClick() {
        super.onClick();
        b();
        Intent aa = erl.aa(this, acr.ae(this, a()), "op_source_short_noti_quick");
        if (aa == null) {
            gm.c(this, R.string.error_tool_need_buy);
            return;
        }
        fnp.g(this, getString(R.string.app_name));
        aa.addFlags(C.ENCODING_PCM_MU_LAW);
        if ("layout_inspector".equals(a()) || "text_copy".equals(a())) {
            aa.putExtra(abn.EXTRA_SOURCE, "notification");
        }
        try {
            if (dyd.ar(34)) {
                startActivityAndCollapse(aa);
                return;
            }
            PendingIntent activity = PendingIntent.getActivity(this, 0, aa, 201326592);
            Method declaredMethod = TileService.class.getDeclaredMethod("startActivityAndCollapse", PendingIntent.class);
            if (declaredMethod != null) {
                declaredMethod.invoke(this, activity);
            }
        } catch (IllegalAccessException | NoSuchMethodException | NullPointerException | UnsupportedOperationException | InvocationTargetException unused) {
        }
    }

    @Override // android.service.quicksettings.TileService
    public final void onStartListening() {
        super.onStartListening();
        b();
    }

    @Override // android.service.quicksettings.TileService
    public final void onTileAdded() {
        super.onTileAdded();
        b();
    }
}
