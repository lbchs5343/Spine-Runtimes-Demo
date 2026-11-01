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
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class ka extends ghz implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f19521a;

    /* renamed from: b, reason: collision with root package name */
    public static ArrayList f19522b;

    /* renamed from: c, reason: collision with root package name */
    public static String f19523c;

    /* renamed from: d, reason: collision with root package name */
    public View f19524d;

    /* renamed from: e, reason: collision with root package name */
    public long f19525e;

    /* renamed from: f, reason: collision with root package name */
    public View f19526f;

    /* renamed from: g, reason: collision with root package name */
    public volatile boolean f19527g;
    public View h;
    public WindowManager i;
    public RecyclerView j;
    public View k;
    public axs l;
    public bar m;
    public View n;
    public int o;
    public ka p;
    public View q;
    public eqi r;
    public sr s;
    public AtomicBoolean t;
    public dbv u;
    public View v;

    public static he w(int i) {
        ArrayList arrayList = f19522b;
        if (arrayList == null || i < 0 || i >= arrayList.size()) {
            return null;
        }
        return (he) f19522b.get(i);
    }

    public static void x(he heVar) {
        if (heVar == null) {
            f19522b = null;
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedList linkedList = new LinkedList();
        linkedList.add(heVar);
        while (!linkedList.isEmpty()) {
            he heVar2 = (he) linkedList.poll();
            if (linkedHashSet.add(heVar2)) {
                for (he heVar3 : heVar2.getChildNodeInfoList()) {
                    if (heVar3 != null) {
                        linkedList.offer(heVar3);
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashSet);
        Collections.sort(arrayList, new aqn(5));
        for (int i = 0; i < arrayList.size(); i++) {
            ((he) arrayList.get(i)).setIndex(i);
        }
        f19522b = arrayList;
    }

    public static boolean y(ka kaVar) {
        kaVar.getClass();
        return ((!dzm.bc() || dzm.at(kaVar)) ? buj.be(0, 943428) + 23681 : buj.be(0, 23680)) < 23680;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static he z(boolean z, boolean z2) {
        he m;
        he m2;
        if (z2) {
            if (ern.f16035a) {
                ern.f16040f = null;
            }
            m = ern.m();
        } else {
            m = ern.m();
        }
        boolean z3 = gk.f18292d;
        if (m != null) {
            CharSequence packageName = m.getPackageName();
            int windowId = m.getWindowId();
            int i = dyd.p;
            if (i < 0 || (i == windowId && TextUtils.equals(dyd.z, packageName))) {
                if (m.getChildCount() == 0 && (m2 = bew.m()) != null) {
                    m = m2;
                }
                if (z) {
                    x(m);
                }
                return m;
            }
        }
        m = bew.m();
        if (z) {
        }
        return m;
    }

    public final void aa(he heVar) {
        AtomicBoolean atomicBoolean = this.t;
        if (heVar == null) {
            gm.f(this.p, R.string.li_export_no);
        } else {
            if (atomicBoolean.get()) {
                return;
            }
            atomicBoolean.set(true);
            ffb.as().execute(new gfh(19, this, heVar, false));
        }
    }

    public final void ab() {
        this.o++;
        f19521a = false;
        fzn.l(getApplicationContext()).q(new Intent("inspector_close"));
        if (this.i != null && this.n != null && this.f19527g) {
            this.i.removeView(this.n);
        }
        synchronized (ka.class) {
            this.f19527g = false;
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.m;
    }

    @Override // android.app.Service
    public final void onCreate() {
        NotificationChannel t;
        super.onCreate();
        this.p = this;
        this.r = new eqi(this, 2);
        this.m = new bar(this);
        this.i = (WindowManager) getSystemService("window");
        f19521a = true;
        this.s = new sr(4, this);
        this.l = new axs(new eie(11, this), new Handler(), this.p, "layout_inspector_ow_auto_hide");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ekq.ACTION_PERMISSION_RESULT_RECEIVER);
        intentFilter.addAction("window_state_changed");
        intentFilter.addAction("c.t.d.l.v.e");
        intentFilter.addAction("c.t.d.s.c");
        fzn.l(this).v(this.s, intentFilter);
        if (eyt.am(this, "android.permission.POST_NOTIFICATIONS") == 0) {
            dyy dyyVar = new dyy(this.p);
            String num = Integer.toString(100003);
            Uri uri = Settings.System.DEFAULT_NOTIFICATION_URI;
            num.getClass();
            AudioAttributes audioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;
            String string = getString(R.string.cac);
            int i = Build.VERSION.SDK_INT;
            if (i < 26) {
                t = null;
            } else {
                t = cmb.t(4, num, string);
                cmb.i(t);
                cmb.r(t);
                cmb.l(t);
                cmb.m(t, uri, audioAttributes);
                cmb.j(t, true);
                cmb.v(t, -16776961);
                cmb.e(t);
                cmb.o(t);
            }
            if (i >= 26) {
                cmb.y(dyyVar.f15114g, t);
            }
            ka kaVar = this.p;
            SimpleDateFormat simpleDateFormat = dlb.f14354a;
            PendingIntent activity = PendingIntent.getActivity(kaVar, (int) System.currentTimeMillis(), acr.au(this.p, b.d.ab.class).putExtra(abn.EXTRA_SOURCE, "notification"), 201326592);
            PendingIntent activity2 = PendingIntent.getActivity(this.p, (int) System.currentTimeMillis(), new Intent(this.p, (Class<?>) b.d.c.class).setAction("c.t.d.l.v.e"), 201326592);
            zc zcVar = new zc(getApplicationContext(), num);
            zcVar.s.icon = R.drawable.fbec_gray;
            zcVar.i = zc.t(getString(R.string.li_notification_tips));
            zcVar.u(16, false);
            zcVar.w(R.drawable.fbec_gray, getString(R.string.cac), activity);
            zcVar.w(R.drawable.exit, getString(R.string.exit), activity2);
            zcVar.u(2, true);
            zcVar.f20383d = TileService.EXTRA_SERVICE;
            zcVar.r = activity;
            dyyVar.i(30021, zcVar.y());
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.o++;
        this.l.onDestroy();
        fzn.l(this).u(this.s);
        f19521a = false;
        super.onDestroy();
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        int id = view.getId();
        if (id == R.id.inspect) {
            gm.c(this.p, R.string.li_cd_click_to_li);
            return true;
        }
        if (id == R.id.download) {
            gm.c(this.p, R.string.li_cd_click_to_export);
            return true;
        }
        if (id == R.id.about) {
            return true;
        }
        if (id == R.id.close) {
            gm.e(this.p, R.string.tc_close_tips);
            return true;
        }
        if (id != R.id.exit) {
            return true;
        }
        gm.e(this.p, R.string.exit);
        return true;
    }
}
