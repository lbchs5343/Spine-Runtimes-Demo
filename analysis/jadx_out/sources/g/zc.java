package g;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import cn.trinea.android.developertools.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zc {

    /* renamed from: a, reason: collision with root package name */
    public IconCompat f20380a;

    /* renamed from: b, reason: collision with root package name */
    public bgf f20381b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f20382c;

    /* renamed from: d, reason: collision with root package name */
    public String f20383d;

    /* renamed from: f, reason: collision with root package name */
    public String f20385f;

    /* renamed from: g, reason: collision with root package name */
    public CharSequence f20386g;
    public final Context h;
    public CharSequence i;
    public final ArrayList j;
    public String k;
    public int m;
    public final boolean p;
    public PendingIntent r;
    public final Notification s;
    public final ArrayList n = new ArrayList();
    public final ArrayList q = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f20384e = new ArrayList();
    public final boolean o = true;
    public boolean l = false;

    public zc(Context context, String str) {
        Notification notification = new Notification();
        this.s = notification;
        this.h = context;
        this.k = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.m = 0;
        this.j = new ArrayList();
        this.p = true;
    }

    public static CharSequence t(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public final void u(int i, boolean z) {
        Notification notification = this.s;
        if (z) {
            notification.flags = i | notification.flags;
        } else {
            notification.flags = (~i) & notification.flags;
        }
    }

    public final void v(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT < 27) {
            Resources resources = this.h.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
            if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                bitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
            }
        }
        PorterDuff.Mode mode = IconCompat.f150a;
        bitmap.getClass();
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.h = bitmap;
        this.f20380a = iconCompat;
    }

    public final void w(int i, String str, PendingIntent pendingIntent) {
        this.n.add(new fxx(i, str, pendingIntent));
    }

    public final void x(bgf bgfVar) {
        if (this.f20381b != bgfVar) {
            this.f20381b = bgfVar;
            if (((zc) bgfVar.z) != this) {
                bgfVar.z = this;
                x(bgfVar);
            }
        }
    }

    public final Notification y() {
        Notification build;
        Bundle bundle;
        duw duwVar = new duw(this);
        zc zcVar = (zc) duwVar.f14865e;
        bgf bgfVar = zcVar.f20381b;
        if (bgfVar != null) {
            bgfVar.aj(duwVar);
        }
        if (bgfVar != null) {
            bgfVar.ab();
        }
        Notification.Builder builder = (Notification.Builder) duwVar.f14864d;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            build = builder.build();
        } else if (i >= 24) {
            build = builder.build();
        } else {
            builder.setExtras((Bundle) duwVar.f14866f);
            build = builder.build();
        }
        if (bgfVar != null) {
            bgfVar.ai();
        }
        if (bgfVar != null) {
            zcVar.f20381b.ae();
        }
        if (bgfVar != null && (bundle = build.extras) != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", bgfVar.ah());
        }
        return build;
    }
}
