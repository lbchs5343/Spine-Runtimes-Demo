package g;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.provider.Settings;
import android.service.quicksettings.TileService;
import android.view.View;
import android.view.WindowManager;
import cn.trinea.android.developertools.R;
import java.text.SimpleDateFormat;

/* loaded from: classes.dex */
public abstract class fri extends ghz implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f17284a;

    /* renamed from: b, reason: collision with root package name */
    public View f17285b;

    /* renamed from: c, reason: collision with root package name */
    public View f17286c;

    /* renamed from: d, reason: collision with root package name */
    public View f17287d;

    /* renamed from: e, reason: collision with root package name */
    public emq f17288e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f17289f;

    /* renamed from: g, reason: collision with root package name */
    public sr f17290g;
    public int h;
    public View i;
    public fri j;
    public View k;
    public WindowManager l;
    public axs m;
    public int n;
    public View o;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f17288e;
    }

    @Override // android.app.Service
    public final void onCreate() {
        NotificationChannel notificationChannel;
        super.onCreate();
        this.j = this;
        this.f17288e = new emq(this);
        this.l = (WindowManager) getSystemService("window");
        f17284a = true;
        this.f17290g = new sr(9, this);
        this.m = new axs(new eie(18, this), new Handler(), this.j, "text_copy_ow_auto_hide");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("window_state_changed");
        intentFilter.addAction("c.t.d.t.c.e");
        intentFilter.addAction("c.t.d.s.c");
        fzn.l(this).v(this.f17290g, intentFilter);
        if (eyt.am(this, "android.permission.POST_NOTIFICATIONS") == 0) {
            dyy dyyVar = new dyy(this.j);
            String num = Integer.toString(100002);
            Uri uri = Settings.System.DEFAULT_NOTIFICATION_URI;
            num.getClass();
            AudioAttributes audioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;
            String string = getString(R.string.cc);
            int i = Build.VERSION.SDK_INT;
            if (i < 26) {
                notificationChannel = null;
            } else {
                NotificationChannel t = cmb.t(0, num, string);
                cmb.i(t);
                cmb.r(t);
                cmb.l(t);
                cmb.m(t, uri, audioAttributes);
                cmb.j(t, true);
                cmb.v(t, -16776961);
                cmb.e(t);
                cmb.o(t);
                notificationChannel = t;
            }
            if (i >= 26) {
                cmb.y(dyyVar.f15114g, notificationChannel);
            }
            fri friVar = this.j;
            SimpleDateFormat simpleDateFormat = dlb.f14354a;
            PendingIntent activity = PendingIntent.getActivity(friVar, (int) System.currentTimeMillis(), acr.au(this.j, b.d.a.class).putExtra(abn.EXTRA_SOURCE, "notification"), 201326592);
            PendingIntent activity2 = PendingIntent.getActivity(this.j, (int) System.currentTimeMillis(), new Intent(this.j, (Class<?>) b.d.c.class).setAction("c.t.d.t.c.e"), 201326592);
            zc zcVar = new zc(getApplicationContext(), num);
            zcVar.s.icon = R.drawable.cc_gray;
            zcVar.i = zc.t(getString(R.string.tc_notification_tips));
            zcVar.u(16, false);
            zcVar.w(R.drawable.cc_gray, getString(R.string.cc), activity);
            zcVar.w(R.drawable.exit, getString(R.string.exit), activity2);
            zcVar.u(2, true);
            zcVar.f20383d = TileService.EXTRA_SERVICE;
            zcVar.r = activity;
            dyyVar.i(30020, zcVar.y());
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.n++;
        this.m.onDestroy();
        fzn.l(this).u(this.f17290g);
        f17284a = false;
        super.onDestroy();
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        int id = view.getId();
        if (id == R.id.inspect) {
            gm.e(this.j, R.string.tx_cd_view_text);
            return true;
        }
        if (id == R.id.find) {
            gm.e(this.j, R.string.manifest_search);
            return true;
        }
        if (id == R.id.close) {
            gm.e(this.j, R.string.tc_close_tips);
            return true;
        }
        if (id != R.id.exit) {
            return true;
        }
        gm.e(this.j, R.string.exit);
        return true;
    }

    public final void p() {
        this.n++;
        f17284a = false;
        fzn.l(getApplicationContext()).q(new Intent("inspector_close"));
        if (this.l != null && this.i != null && this.f17289f) {
            this.l.removeView(this.i);
        }
        synchronized (fri.class) {
            this.f17289f = false;
        }
    }

    public final void q(final boolean z) {
        final hdb hdbVar;
        final ert ae = acr.ae(this.j, "text_copy");
        if (ae == null || (hdbVar = ae.r) == null) {
            gm.f(this.j, R.string.error_no_processor);
            return;
        }
        final int i = this.n + 1;
        this.n = i;
        bew.p(this.j, new bky(i, hdbVar, ae, z) { // from class: g.fzl

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ boolean f17715a;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ int f17717c;

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ hdb f17718e;

            {
                this.f17715a = z;
            }

            @Override // g.bky
            public final void d(he heVar, boolean z2) {
                fri friVar = fri.this;
                int i2 = this.f17717c;
                hdb hdbVar2 = this.f17718e;
                boolean z3 = this.f17715a;
                if (i2 == friVar.n && friVar.f17289f) {
                    boolean z4 = edx.f15386e.get() > 0;
                    if (z4) {
                        fzn.l(friVar.getApplicationContext()).q(new Intent("inspector_refresh"));
                    }
                    if (heVar == null) {
                        fri friVar2 = friVar.j;
                        Handler handler = bew.f11418f;
                        gm.f(friVar2, z2 ? R.string.shizuku_capture_failed : R.string.li_export_no);
                        return;
                    }
                    if (hdbVar2 instanceof gdm) {
                        Intent c2 = ((gdm) hdbVar2).c(friVar.j);
                        c2.putExtra("layout_snapshot_prepared", true);
                        c2.putExtra(abn.EXTRA_SOURCE, (!z3 || z4) ? "control_bar" : "control_bar_find");
                        fgj.e().f(friVar.j, c2);
                    }
                    if (z3 && z4) {
                        fzn.l(friVar.getApplicationContext()).q(new Intent("find"));
                    }
                    fnp.g(friVar, friVar.getString(R.string.app_name));
                }
            }
        });
    }
}
