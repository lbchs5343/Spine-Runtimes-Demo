package g;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import androidx.work.impl.utils.ForceStopRunnable$BroadcastReceiver;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class ejk implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public static final String f15658a = cyl.g("ForceStopRunnable");

    /* renamed from: b, reason: collision with root package name */
    public static final long f15659b = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: c, reason: collision with root package name */
    public final evf f15660c;

    /* renamed from: d, reason: collision with root package name */
    public int f15661d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final Context f15662e;

    /* renamed from: f, reason: collision with root package name */
    public final fxb f15663f;

    public ejk(Context context, fxb fxbVar) {
        this.f15662e = context.getApplicationContext();
        this.f15663f = fxbVar;
        this.f15660c = fxbVar.ba;
    }

    public static void g(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        int i = Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728;
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) ForceStopRunnable$BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, -1, intent, i);
        long currentTimeMillis = System.currentTimeMillis() + f15659b;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis, broadcast);
        }
    }

    /* JADX WARN: Finally extract failed */
    public final void h() {
        boolean z;
        WorkDatabase workDatabase;
        int i;
        PendingIntent broadcast;
        List historicalProcessExitReasons;
        int reason;
        long timestamp;
        evf evfVar = this.f15660c;
        int i2 = Build.VERSION.SDK_INT;
        Context context = this.f15662e;
        fxb fxbVar = this.f15663f;
        if (i2 >= 23) {
            workDatabase = fxbVar.az;
            String str = eyp.f16378a;
            JobScheduler c2 = dlm.c(context);
            ArrayList h = eyp.h(context, c2);
            duw g2 = workDatabase.g();
            g2.getClass();
            fcg o = fcg.o(0, "SELECT DISTINCT work_spec_id FROM SystemIdInfo");
            WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) g2.h;
            workDatabase_Impl.al();
            Cursor ag = workDatabase_Impl.ag(o);
            try {
                ArrayList arrayList = new ArrayList(ag.getCount());
                while (ag.moveToNext()) {
                    arrayList.add(ag.getString(0));
                }
                HashSet hashSet = new HashSet(h != null ? h.size() : 0);
                if (h != null && !h.isEmpty()) {
                    Iterator it = h.iterator();
                    while (it.hasNext()) {
                        JobInfo jobInfo = (JobInfo) it.next();
                        gxm j = eyp.j(jobInfo);
                        if (j != null) {
                            hashSet.add(j.f18956a);
                        } else {
                            eyp.i(c2, jobInfo.getId());
                        }
                    }
                }
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (!hashSet.contains((String) it2.next())) {
                            cyl.f().getClass();
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    workDatabase.an();
                    try {
                        gg a2 = workDatabase.a();
                        Iterator it3 = arrayList.iterator();
                        while (it3.hasNext()) {
                            a2.ab(-1L, (String) it3.next());
                        }
                        workDatabase.ah();
                        workDatabase.am();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } finally {
                ag.close();
                o.p();
            }
        } else {
            z = false;
        }
        workDatabase = fxbVar.az;
        gg a3 = workDatabase.a();
        gkr f2 = workDatabase.f();
        workDatabase.an();
        try {
            ArrayList v = a3.v();
            boolean isEmpty = v.isEmpty();
            if (!isEmpty) {
                Iterator it4 = v.iterator();
                while (it4.hasNext()) {
                    fkj fkjVar = (fkj) it4.next();
                    gys gysVar = gys.ENQUEUED;
                    String str2 = fkjVar.h;
                    a3.s(gysVar, str2);
                    a3.r(-512, str2);
                    a3.ab(-1L, str2);
                }
            }
            WorkDatabase_Impl workDatabase_Impl2 = (WorkDatabase_Impl) f2.f18325e;
            workDatabase_Impl2.al();
            bnh bnhVar = (bnh) f2.f18323c;
            cap i3 = bnhVar.i();
            try {
                workDatabase_Impl2.an();
                try {
                    i3.h();
                    workDatabase_Impl2.ah();
                    bnhVar.h(i3);
                    workDatabase.ah();
                    workDatabase.am();
                    boolean z2 = !isEmpty || z;
                    Long ag2 = ((WorkDatabase) fxbVar.ba.f16224f).e().ag("reschedule_needed");
                    if (ag2 != null && ag2.longValue() == 1) {
                        cyl.f().getClass();
                        fxbVar.bi();
                        evf evfVar2 = fxbVar.ba;
                        evfVar2.getClass();
                        ((WorkDatabase) evfVar2.f16224f).e().p(new cmk("reschedule_needed", 0L));
                        return;
                    }
                    try {
                        i = Build.VERSION.SDK_INT;
                        int i4 = i >= 31 ? 570425344 : C.ENCODING_PCM_A_LAW;
                        Intent intent = new Intent();
                        intent.setComponent(new ComponentName(context, (Class<?>) ForceStopRunnable$BroadcastReceiver.class));
                        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
                        broadcast = PendingIntent.getBroadcast(context, -1, intent, i4);
                    } catch (IllegalArgumentException | SecurityException unused) {
                        cyl.f().getClass();
                    }
                    if (i >= 30) {
                        if (broadcast != null) {
                            broadcast.cancel();
                        }
                        historicalProcessExitReasons = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getHistoricalProcessExitReasons(null, 0, 0);
                        if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                            Long ag3 = ((WorkDatabase) evfVar.f16224f).e().ag("last_force_stop_ms");
                            long longValue = ag3 != null ? ag3.longValue() : 0L;
                            for (int i5 = 0; i5 < historicalProcessExitReasons.size(); i5++) {
                                ApplicationExitInfo u = guj.u(historicalProcessExitReasons.get(i5));
                                reason = u.getReason();
                                if (reason == 10) {
                                    timestamp = u.getTimestamp();
                                    if (timestamp >= longValue) {
                                        cyl.f().getClass();
                                        fxbVar.bi();
                                        fxbVar.aw.f16981c.getClass();
                                        long currentTimeMillis = System.currentTimeMillis();
                                        evfVar.getClass();
                                        ((WorkDatabase) evfVar.f16224f).e().p(new cmk("last_force_stop_ms", Long.valueOf(currentTimeMillis)));
                                        return;
                                    }
                                }
                            }
                        }
                    } else if (broadcast == null) {
                        g(context);
                        cyl.f().getClass();
                        fxbVar.bi();
                        fxbVar.aw.f16981c.getClass();
                        long currentTimeMillis2 = System.currentTimeMillis();
                        evfVar.getClass();
                        ((WorkDatabase) evfVar.f16224f).e().p(new cmk("last_force_stop_ms", Long.valueOf(currentTimeMillis2)));
                        return;
                    }
                    if (z2) {
                        cyl.f().getClass();
                        fje.c(fxbVar.aw, fxbVar.az, fxbVar.ay);
                    }
                } finally {
                    workDatabase_Impl2.am();
                }
            } catch (Throwable th2) {
                bnhVar.h(i3);
                throw th2;
            }
        } finally {
            workDatabase.am();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean a2;
        String str = f15658a;
        fxb fxbVar = this.f15663f;
        try {
            flk flkVar = fxbVar.aw;
            flkVar.getClass();
            boolean isEmpty = TextUtils.isEmpty(null);
            Context context = this.f15662e;
            if (isEmpty) {
                cyl.f().getClass();
                a2 = true;
            } else {
                a2 = bz.a(context, flkVar);
                cyl.f().getClass();
            }
            if (!a2) {
                return;
            }
            while (true) {
                try {
                    buj.ah(context);
                    cyl.f().getClass();
                    try {
                        h();
                        return;
                    } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteDiskIOException | SQLiteFullException | SQLiteTableLockedException e2) {
                        int i = this.f15661d + 1;
                        this.f15661d = i;
                        if (i >= 3) {
                            String str2 = Build.VERSION.SDK_INT >= 24 ? cml.a(context) : true ? "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store." : "WorkManager can't be accessed from direct boot, because credential encrypted storage isn't accessible.\nDon't access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot";
                            cyl.f().j(str, str2, e2);
                            IllegalStateException illegalStateException = new IllegalStateException(str2, e2);
                            fxbVar.aw.getClass();
                            throw illegalStateException;
                        }
                        cyl.f().getClass();
                        try {
                            Thread.sleep(this.f15661d * 300);
                        } catch (InterruptedException unused) {
                        }
                    }
                } catch (SQLiteException e3) {
                    cyl.f().i(str, "Unexpected SQLite exception during migrations");
                    IllegalStateException illegalStateException2 = new IllegalStateException("Unexpected SQLite exception during migrations", e3);
                    fxbVar.aw.getClass();
                    throw illegalStateException2;
                }
            }
        } finally {
            fxbVar.bk();
        }
    }
}
