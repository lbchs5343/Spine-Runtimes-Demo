package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppLocalesMetadataHolderService;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.Objects;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class dkn {

    /* renamed from: f, reason: collision with root package name */
    public static final aqv f14321f = new aqv(new fpe(1));
    public static int h = -100;

    /* renamed from: c, reason: collision with root package name */
    public static azt f14318c = null;

    /* renamed from: d, reason: collision with root package name */
    public static azt f14319d = null;

    /* renamed from: e, reason: collision with root package name */
    public static Boolean f14320e = null;
    public static boolean i = false;

    /* renamed from: b, reason: collision with root package name */
    public static final glm f14317b = new glm(0);

    /* renamed from: a, reason: collision with root package name */
    public static final Object f14316a = new Object();

    /* renamed from: g, reason: collision with root package name */
    public static final Object f14322g = new Object();

    public static void j(int i2) {
        if ((i2 == -1 || i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3) && h != i2) {
            h = i2;
            synchronized (f14316a) {
                try {
                    glm glmVar = f14317b;
                    glmVar.getClass();
                    hx hxVar = new hx(glmVar);
                    while (hxVar.hasNext()) {
                        dkn dknVar = (dkn) ((WeakReference) hxVar.next()).get();
                        if (dknVar != null) {
                            ((dre) dknVar).cs(true, true);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static boolean k(Context context) {
        if (f14320e == null) {
            try {
                int i2 = AppLocalesMetadataHolderService.f42a;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) AppLocalesMetadataHolderService.class), Build.VERSION.SDK_INT >= 24 ? ccv.a() | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME : MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK).metaData;
                if (bundle != null) {
                    f14320e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                f14320e = Boolean.FALSE;
            }
        }
        return f14320e.booleanValue();
    }

    public static void l() {
        azt aztVar;
        glm glmVar = f14317b;
        glmVar.getClass();
        hx hxVar = new hx(glmVar);
        while (hxVar.hasNext()) {
            dkn dknVar = (dkn) ((WeakReference) hxVar.next()).get();
            if (dknVar != null) {
                dre dreVar = (dre) dknVar;
                Context context = dreVar.aw;
                if (k(context) && (aztVar = f14318c) != null && !aztVar.equals(f14319d)) {
                    f14321f.execute(new gtf(context, 1));
                }
                dreVar.cs(true, true);
            }
        }
    }

    public static void m(azt aztVar) {
        Objects.requireNonNull(aztVar);
        if (Build.VERSION.SDK_INT >= 33) {
            Object n = n();
            if (n != null) {
                bgl.b(n, gko.a(aztVar.f11131b.d()));
                return;
            }
            return;
        }
        if (aztVar.equals(f14318c)) {
            return;
        }
        synchronized (f14316a) {
            f14318c = aztVar;
            l();
        }
    }

    public static Object n() {
        Context context;
        glm glmVar = f14317b;
        glmVar.getClass();
        hx hxVar = new hx(glmVar);
        while (hxVar.hasNext()) {
            dkn dknVar = (dkn) ((WeakReference) hxVar.next()).get();
            if (dknVar != null && (context = ((dre) dknVar).aw) != null) {
                return context.getSystemService("locale");
            }
        }
        return null;
    }

    public static void o(dre dreVar) {
        synchronized (f14316a) {
            try {
                glm glmVar = f14317b;
                glmVar.getClass();
                hx hxVar = new hx(glmVar);
                while (hxVar.hasNext()) {
                    dkn dknVar = (dkn) ((WeakReference) hxVar.next()).get();
                    if (dknVar == dreVar || dknVar == null) {
                        hxVar.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void r(Context context) {
        if (k(context)) {
            if (Build.VERSION.SDK_INT >= 33) {
                if (i) {
                    return;
                }
                f14321f.execute(new gtf(context, 0));
                return;
            }
            synchronized (f14322g) {
                try {
                    azt aztVar = f14318c;
                    if (aztVar == null) {
                        if (f14319d == null) {
                            f14319d = azt.d(egh.ak(context));
                        }
                        if (f14319d.f11131b.isEmpty()) {
                        } else {
                            f14318c = f14319d;
                        }
                    } else if (!aztVar.equals(f14319d)) {
                        azt aztVar2 = f14318c;
                        f14319d = aztVar2;
                        egh.ab(context, aztVar2.f11131b.d());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public abstract void aa();

    public abstract boolean s(int i2);

    public abstract void t(View view);

    public abstract void u(CharSequence charSequence);

    public abstract void v(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void w();

    public abstract void x();

    public abstract void y(int i2);

    public abstract gtg z(dbn dbnVar);
}
