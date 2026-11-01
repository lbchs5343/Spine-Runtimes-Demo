package g;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.fxe;
import java.io.File;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class dqe {
    private static dqe q;
    private static gdb r;
    private static dkc s;
    private static List<gll> t;
    private static WeakReference<fpl> u;
    private static boolean v;
    private static List<String> w;
    private Context x;
    private WeakReference<Activity> y;

    private dqe(Activity activity) {
        this.x = fgj.d(activity);
        this.y = new WeakReference<>(activity);
        if (v) {
            return;
        }
        s = new dkc((DownloadManager) this.x.getApplicationContext().getSystemService("download"));
        t = new ArrayList();
        w = new ArrayList();
        ac();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aa(gll gllVar) {
        if (gllVar == null || gllVar.getDownloadId() < 0) {
            return;
        }
        t.add(gllVar);
        acw.au(this.x, "update_download_infos", ex.i(t));
        af();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ab() {
        WeakReference<fpl> weakReference = u;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        Activity activity = this.y.get();
        fpl fplVar = u.get();
        if (activity == null || fplVar == null) {
            return;
        }
        if ((activity instanceof Activity) && activity.isFinishing()) {
            return;
        }
        fplVar.dismiss();
    }

    private void ac() {
        if (v) {
            return;
        }
        v = true;
        String ak = cro.ak(this.x, "update_download_infos", null);
        if (TextUtils.isEmpty(ak) || !eyt.ab(this.x, "com.android.providers.downloads", false)) {
            return;
        }
        try {
            t = ex.g(ak);
        } catch (Exception unused) {
        }
        if (t == null) {
            t = new ArrayList();
        }
        af();
    }

    private void ad(boolean z, cx cxVar) {
        String packageName = this.x.getPackageName();
        if (w.contains(packageName)) {
            return;
        }
        String ak = cro.ak(this.x, "update_response", null);
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        if (!TextUtils.isEmpty(ak)) {
            try {
                fjv fjvVar = (fjv) ex.f(fjv.class, ak);
                if (fjvVar == null || !fjvVar.isForce()) {
                    long ae = cro.ae(this.x, "update_last_check_time", -1L);
                    fxe p = atf.g(this.x).p();
                    fxe.g gVar = p == null ? null : p.update;
                    long j = gVar == null ? 86400L : gVar.checkInterval;
                    if (j != 0 && ae > 0 && ae + j > currentTimeMillis) {
                        return;
                    }
                }
            } catch (Exception unused) {
            }
        }
        if (z) {
            gmn z2 = ckd.z(this.y.get());
            die dieVar = (die) z2.z;
            dieVar.f14221f = "";
            dieVar.m = dieVar.i.getText(R.string.check_update);
            z2.q("", null);
            dieVar.p = false;
            fpl r2 = z2.r();
            eyt.ay(this.y.get(), r2);
            u = new WeakReference<>(r2);
        }
        w.add(packageName);
        gez e2 = hca.e(this.x);
        if (e2 == null) {
            e2 = new gez(false);
        }
        fwa fwaVar = (fwa) dtw.c(this.x).r(fwa.class);
        int bj = eyt.bj(this.x);
        String ab2 = cux.ab(this.x);
        boolean z3 = e2.f18010g;
        String[] strArr = (String[]) e2.f18008e;
        czh<cbf<fjv>> a2 = fwaVar.a(packageName, bj, ab2, z3 ? 1 : 0, strArr != null ? TextUtils.join(",", strArr) : "", dyd.az(this.x));
        edm edmVar = new edm();
        edmVar.f15363a = this;
        edmVar.f15364b = currentTimeMillis;
        edmVar.f15365c = cxVar;
        a2.d(edmVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ae(boolean z, int i) {
        if (z) {
            gm.d(this.x, this.x.getString(R.string.update_error) + i, 1);
        }
    }

    private void af() {
        if (acw.u(t)) {
            z();
            return;
        }
        Iterator<gll> it = t.iterator();
        long currentTimeMillis = System.currentTimeMillis();
        fxe p = atf.g(this.x).p();
        fxe.g gVar = p == null ? null : p.update;
        long j = gVar == null ? AdBaseConstants.DEFAULT_DELAY_TIMESTAMP : gVar.localDlValidTime;
        boolean z = false;
        while (it.hasNext()) {
            gll next = it.next();
            if (s.f(next.getDownloadId()) || currentTimeMillis - next.getTime() > j) {
                it.remove();
            } else {
                if (!w.contains(next.getPackageName())) {
                    w.add(next.getPackageName());
                }
                z = true;
            }
        }
        if (z && r == null) {
            gdb gdbVar = new gdb(this);
            r = gdbVar;
            Context context = this.x;
            IntentFilter intentFilter = new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE");
            AtomicInteger atomicInteger = fgj.f16743a;
            if (Build.VERSION.SDK_INT >= 34) {
                context.registerReceiver(gdbVar, intentFilter, 4);
            } else {
                context.registerReceiver(gdbVar, intentFilter);
            }
        }
        if (z) {
            return;
        }
        z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public gll ag(long j) {
        boolean z;
        if (j < 0) {
            return null;
        }
        Iterator<gll> it = t.iterator();
        gll gllVar = null;
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            gllVar = it.next();
            if (j == gllVar.getDownloadId()) {
                it.remove();
                z = true;
                break;
            }
        }
        if (!z) {
            return null;
        }
        acw.au(this.x, "update_download_infos", ex.i(t));
        af();
        return gllVar;
    }

    private void ah(int i) {
        erl.y(this.x.getString(R.string.update_error) + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void ai() {
        Activity activity = this.y.get();
        if (activity != null) {
            activity.finish();
        }
    }

    private void aj(String str) {
        erl.y(this.x.getString(R.string.update_error) + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ak(boolean z) {
        if (z) {
            SimpleDateFormat simpleDateFormat = dlb.f14354a;
            Calendar calendar = Calendar.getInstance();
            calendar.set(1, 2022);
            calendar.set(2, 7);
            calendar.set(5, 31);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            if (System.currentTimeMillis() <= calendar.getTimeInMillis()) {
                return true;
            }
        }
        return false;
    }

    public static void f(Activity activity) {
        dqe dqeVar = q;
        if (dqeVar != null) {
            dqeVar.y = new WeakReference<>(activity);
        }
    }

    public static dqe g() {
        return q;
    }

    public static dqe k(Activity activity) {
        dqe dqeVar = q;
        if (dqeVar == null || dqeVar.y.get() == null) {
            synchronized (dqe.class) {
                try {
                    if (q == null) {
                        q = new dqe(activity);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return q;
    }

    private void z() {
        gdb gdbVar = r;
        if (gdbVar != null) {
            this.x.unregisterReceiver(gdbVar);
            r = null;
        }
    }

    public void n(fjv fjvVar, boolean z) {
        DownloadManager.Request request;
        int i = 0;
        int i2 = 1;
        boolean z2 = fjvVar.isDiffUpdate() && fjvVar.getOldVersionCode() == eyt.bj(this.x);
        String diffUrl = z2 ? fjvVar.getDiffUrl() : fjvVar.getUrl();
        if (TextUtils.isEmpty(diffUrl)) {
            fjvVar.getPackageName();
            ae(z, 200);
            return;
        }
        File externalFilesDir = this.x.getExternalFilesDir(null);
        StringBuilder sb = new StringBuilder();
        sb.append(externalFilesDir.getAbsolutePath());
        String ad = awf.ad(sb, File.separator, "DevTools.apk");
        if (eyt.ab(this.x, "com.android.providers.downloads", false)) {
            DownloadManager.Request request2 = new DownloadManager.Request(Uri.parse(diffUrl));
            String ax = eyt.ax(this.x);
            StringBuilder sb2 = new StringBuilder();
            if (TextUtils.isEmpty(ax)) {
                ax = this.x.getString(R.string.update_notification_title);
            }
            sb2.append(ax);
            sb2.append(" ");
            sb2.append(fjvVar.getVersion());
            request2.setTitle(sb2.toString());
            if (!TextUtils.isEmpty(fjvVar.getAttraction())) {
                request2.setDescription(fjvVar.getAttraction());
            }
            request2.setNotificationVisibility(1);
            request2.setDestinationInExternalFilesDir(this.x, null, "DevTools.apk");
            request2.addRequestHeader("user-agent", acw.an(this.x));
            if (z2) {
                request2.setMimeType("application/cn.trinea.download.file.diff");
            } else {
                request2.setMimeType("application/vnd.android.package-archive");
            }
            request = request2;
        } else {
            request = null;
        }
        if (this.y.get() == null) {
            ae(z, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK);
            return;
        }
        Activity activity = this.y.get();
        Uri parse = Uri.parse(diffUrl);
        String md5 = fjvVar.getMd5();
        cxc cxcVar = new cxc(this, z2, fjvVar, z);
        String string = this.x.getString(R.string.update_tips_downloaded_apk);
        if (request == null || !eyt.ab(activity, "com.android.providers.downloads", false)) {
            if (parse != null) {
                fgj.e().h(activity, new Intent("android.intent.action.VIEW", parse), true);
                cxcVar.h(-1L);
                return;
            }
            return;
        }
        if (dyd.aa() || eyt.am(activity, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            aky.x(activity, request, ad, md5, cxcVar);
        } else {
            fzn fznVar = new fzn(activity, request, ad, md5, cxcVar, 4);
            bfc.s(activity, new AlertDialog.Builder(activity).setTitle(R.string.title_request_permission).setMessage(activity.getString(R.string.content_request_permission, fyt.e(activity, "android.permission.WRITE_EXTERNAL_STORAGE"), string)).setPositiveButton(R.string.alert_dialog_ok, new dwl(fznVar, i2)).setNegativeButton(R.string.alert_dialog_cancel, new dwl(fznVar, i)).create());
        }
    }

    public void o(boolean z) {
        boolean z2 = ak(z) ? false : z;
        ad(z2, new bdm(this, z2, z));
    }

    public void p(fjv fjvVar, boolean z, boolean z2, boolean z3) {
        int av;
        if (fjvVar == null) {
            ae(z2, 101);
            ah(901);
            return;
        }
        if (!this.x.getPackageName().equals(fjvVar.getPackageName())) {
            fjvVar.getPackageName();
            ah(902);
        }
        int bj = eyt.bj(this.x);
        if (fjvVar.getVersionCode() < 0) {
            ah(903);
            if (ak(true)) {
                return;
            }
        } else if (fjvVar.getVersionCode() <= bj) {
            StringBuilder z4 = tn.z(bj, "904: ", "->");
            z4.append(fjvVar.getVersionCode());
            aj(z4.toString());
            return;
        }
        if (fjvVar.isForce() || !z || (av = cro.av(this.x, -1, "update_ignore_version")) <= 0 || fjvVar.getVersionCode() > av) {
            if (this.y.get() == null) {
                ae(z2, 105);
                ah(905);
                return;
            }
            gmn z5 = ckd.z(this.y.get());
            die dieVar = (die) z5.z;
            dieVar.f14221f = !TextUtils.isEmpty(fjvVar.getAttraction()) ? fjvVar.getAttraction() : this.x.getString(R.string.update_dialog_title);
            dieVar.m = fjvVar.getDesc();
            z5.s(TextUtils.isEmpty(fjvVar.getUrl()) ? R.string.alert_dialog_update : R.string.alert_dialog_update_appstore, null);
            dieVar.p = !z3;
            dieVar.f14220e = new gmq(this, fjvVar);
            if (!dyd.bi(this.x) && !TextUtils.isEmpty(fjvVar.getUrl())) {
                dieVar.f14217b = dieVar.i.getText(R.string.alert_dialog_update_in_app);
                dieVar.f14222g = null;
                z5.x(R.string.alert_dialog_update_browser, null);
            }
            fpl r2 = z5.r();
            r2.setOnShowListener(new aix(this, fjvVar));
            eyt.ay(this.y.get(), r2);
            if (!z3) {
                r2.f12197e.i(r2, new bcn(3, new fvi(29, this)));
                r2.setOnKeyListener(new fny(r2));
            }
            try {
                TextView textView = (TextView) r2.findViewById(android.R.id.message);
                if (textView == null) {
                    return;
                }
                textView.setTextIsSelectable(true);
            } catch (Exception unused) {
            }
        }
    }
}
