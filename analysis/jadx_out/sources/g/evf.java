package g;

import android.content.ClipDescription;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.StatFs;
import android.view.View;
import androidx.fragment.app.Fragment;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbno;
import com.google.android.gms.internal.ads.zzbyc;
import com.google.android.gms.internal.ads.zzcaq;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcsy;
import com.google.android.gms.internal.ads.zzdkv;
import com.google.android.gms.internal.ads.zzdkx;
import com.google.android.gms.internal.ads.zzdyt;
import com.google.android.gms.internal.ads.zzfff;
import com.google.android.gms.internal.ads.zzgee;
import j$.util.Objects;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;

/* loaded from: classes.dex */
public class evf implements bez, bmm, ghx, gtx, fsz, btp, ggw, ebz, bsf, zzcaq, zzgee {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f16223e;

    /* renamed from: f, reason: collision with root package name */
    public Object f16224f;

    public evf(int i) {
        this.f16223e = i;
        switch (i) {
            case 7:
                this.f16224f = new LinkedHashMap();
                break;
            case 8:
                this.f16224f = new HashMap();
                break;
            default:
                if (Build.VERSION.SDK_INT < 26) {
                    this.f16224f = new ckr(this);
                    break;
                } else {
                    this.f16224f = new dky(this);
                    break;
                }
        }
    }

    public /* synthetic */ evf(int i, Object obj) {
        this.f16223e = i;
        this.f16224f = obj;
    }

    public /* synthetic */ evf(int i, boolean z) {
        this.f16223e = i;
    }

    public evf(Context context) {
        long j;
        this.f16223e = 14;
        StringBuilder sb = dxc.f14999a;
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j = (statFs.getBlockCountLong() * statFs.getBlockSizeLong()) / 50;
        } catch (IllegalArgumentException unused) {
            j = 5242880;
        }
        long max = Math.max(Math.min(j, 52428800L), 5242880L);
        gjb gjbVar = new gjb();
        gjbVar.f18232b = new fvd(file, max);
        this.f16224f = new fys(gjbVar);
    }

    public evf(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f16223e = 10;
        if (Build.VERSION.SDK_INT >= 25) {
            this.f16224f = new blp(uri, clipDescription, uri2);
        } else {
            this.f16224f = new dzh(uri, clipDescription, uri2, 6, false);
        }
    }

    public evf(bgw bgwVar) {
        this.f16223e = 5;
        bgwVar.w(csv.HIDDEN);
        this.f16224f = bgwVar;
    }

    public evf(bhm bhmVar) {
        this.f16223e = 17;
        this.f16224f = new ThreadPoolExecutor(0, he.UNDEFINED_ITEM_ID, 60L, TimeUnit.SECONDS, new SynchronousQueue(), bhmVar);
    }

    private final void a(Throwable th) {
    }

    public static void h(crd crdVar) {
        crdVar.j("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        crdVar.j("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
        crdVar.j("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
        crdVar.j("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x'', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
        crdVar.j("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
        crdVar.j("CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
        crdVar.j("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        crdVar.j("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
        crdVar.j("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        crdVar.j("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        crdVar.j("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
        crdVar.j("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        crdVar.j("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
        crdVar.j("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        crdVar.j("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '86254750241babac4b8d52996a675549')");
    }

    public static agu j(crd crdVar) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("work_spec_id", new gxa(1, "work_spec_id", "TEXT", null, true, 1));
        hashMap.put("prerequisite_id", new gxa(2, "prerequisite_id", "TEXT", null, true, 1));
        HashSet hashSet = new HashSet(2);
        hashSet.add(new bdv("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(TTDownloadField.TT_ID)));
        hashSet.add(new bdv("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList(TTDownloadField.TT_ID)));
        HashSet hashSet2 = new HashSet(2);
        hashSet2.add(new bg("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id"), Arrays.asList("ASC")));
        hashSet2.add(new bg("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id"), Arrays.asList("ASC")));
        bzp bzpVar = new bzp("Dependency", hashMap, hashSet, hashSet2);
        bzp e2 = bzp.e(crdVar, "Dependency");
        if (!bzpVar.equals(e2)) {
            return new agu(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + bzpVar + "\n Found:\n" + e2);
        }
        HashMap hashMap2 = new HashMap(32);
        hashMap2.put(TTDownloadField.TT_ID, new gxa(1, TTDownloadField.TT_ID, "TEXT", null, true, 1));
        hashMap2.put("state", new gxa(0, "state", "INTEGER", null, true, 1));
        hashMap2.put("worker_class_name", new gxa(0, "worker_class_name", "TEXT", null, true, 1));
        hashMap2.put("input_merger_class_name", new gxa(0, "input_merger_class_name", "TEXT", null, true, 1));
        hashMap2.put("input", new gxa(0, "input", "BLOB", null, true, 1));
        hashMap2.put("output", new gxa(0, "output", "BLOB", null, true, 1));
        hashMap2.put("initial_delay", new gxa(0, "initial_delay", "INTEGER", null, true, 1));
        hashMap2.put("interval_duration", new gxa(0, "interval_duration", "INTEGER", null, true, 1));
        hashMap2.put("flex_duration", new gxa(0, "flex_duration", "INTEGER", null, true, 1));
        hashMap2.put("run_attempt_count", new gxa(0, "run_attempt_count", "INTEGER", null, true, 1));
        hashMap2.put("backoff_policy", new gxa(0, "backoff_policy", "INTEGER", null, true, 1));
        hashMap2.put("backoff_delay_duration", new gxa(0, "backoff_delay_duration", "INTEGER", null, true, 1));
        hashMap2.put("last_enqueue_time", new gxa(0, "last_enqueue_time", "INTEGER", "-1", true, 1));
        hashMap2.put("minimum_retention_duration", new gxa(0, "minimum_retention_duration", "INTEGER", null, true, 1));
        hashMap2.put("schedule_requested_at", new gxa(0, "schedule_requested_at", "INTEGER", null, true, 1));
        hashMap2.put("run_in_foreground", new gxa(0, "run_in_foreground", "INTEGER", null, true, 1));
        hashMap2.put("out_of_quota_policy", new gxa(0, "out_of_quota_policy", "INTEGER", null, true, 1));
        hashMap2.put("period_count", new gxa(0, "period_count", "INTEGER", "0", true, 1));
        hashMap2.put("generation", new gxa(0, "generation", "INTEGER", "0", true, 1));
        hashMap2.put("next_schedule_time_override", new gxa(0, "next_schedule_time_override", "INTEGER", "9223372036854775807", true, 1));
        hashMap2.put("next_schedule_time_override_generation", new gxa(0, "next_schedule_time_override_generation", "INTEGER", "0", true, 1));
        hashMap2.put("stop_reason", new gxa(0, "stop_reason", "INTEGER", "-256", true, 1));
        hashMap2.put("trace_tag", new gxa(0, "trace_tag", "TEXT", null, false, 1));
        hashMap2.put("required_network_type", new gxa(0, "required_network_type", "INTEGER", null, true, 1));
        hashMap2.put("required_network_request", new gxa(0, "required_network_request", "BLOB", "x''", true, 1));
        hashMap2.put("requires_charging", new gxa(0, "requires_charging", "INTEGER", null, true, 1));
        hashMap2.put("requires_device_idle", new gxa(0, "requires_device_idle", "INTEGER", null, true, 1));
        hashMap2.put("requires_battery_not_low", new gxa(0, "requires_battery_not_low", "INTEGER", null, true, 1));
        hashMap2.put("requires_storage_not_low", new gxa(0, "requires_storage_not_low", "INTEGER", null, true, 1));
        hashMap2.put("trigger_content_update_delay", new gxa(0, "trigger_content_update_delay", "INTEGER", null, true, 1));
        hashMap2.put("trigger_max_content_delay", new gxa(0, "trigger_max_content_delay", "INTEGER", null, true, 1));
        hashMap2.put("content_uri_triggers", new gxa(0, "content_uri_triggers", "BLOB", null, true, 1));
        HashSet hashSet3 = new HashSet(0);
        HashSet hashSet4 = new HashSet(2);
        hashSet4.add(new bg("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at"), Arrays.asList("ASC")));
        hashSet4.add(new bg("index_WorkSpec_last_enqueue_time", false, Arrays.asList("last_enqueue_time"), Arrays.asList("ASC")));
        bzp bzpVar2 = new bzp("WorkSpec", hashMap2, hashSet3, hashSet4);
        bzp e3 = bzp.e(crdVar, "WorkSpec");
        if (!bzpVar2.equals(e3)) {
            return new agu(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + bzpVar2 + "\n Found:\n" + e3);
        }
        HashMap hashMap3 = new HashMap(2);
        hashMap3.put(TTDownloadField.TT_TAG, new gxa(1, TTDownloadField.TT_TAG, "TEXT", null, true, 1));
        hashMap3.put("work_spec_id", new gxa(2, "work_spec_id", "TEXT", null, true, 1));
        HashSet hashSet5 = new HashSet(1);
        hashSet5.add(new bdv("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(TTDownloadField.TT_ID)));
        HashSet hashSet6 = new HashSet(1);
        hashSet6.add(new bg("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id"), Arrays.asList("ASC")));
        bzp bzpVar3 = new bzp("WorkTag", hashMap3, hashSet5, hashSet6);
        bzp e4 = bzp.e(crdVar, "WorkTag");
        if (!bzpVar3.equals(e4)) {
            return new agu(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + bzpVar3 + "\n Found:\n" + e4);
        }
        HashMap hashMap4 = new HashMap(3);
        hashMap4.put("work_spec_id", new gxa(1, "work_spec_id", "TEXT", null, true, 1));
        hashMap4.put("generation", new gxa(2, "generation", "INTEGER", "0", true, 1));
        hashMap4.put("system_id", new gxa(0, "system_id", "INTEGER", null, true, 1));
        HashSet hashSet7 = new HashSet(1);
        hashSet7.add(new bdv("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(TTDownloadField.TT_ID)));
        bzp bzpVar4 = new bzp("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
        bzp e5 = bzp.e(crdVar, "SystemIdInfo");
        if (!bzpVar4.equals(e5)) {
            return new agu(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + bzpVar4 + "\n Found:\n" + e5);
        }
        HashMap hashMap5 = new HashMap(2);
        hashMap5.put(abn.EXTRA_UA_APP_NAME, new gxa(1, abn.EXTRA_UA_APP_NAME, "TEXT", null, true, 1));
        hashMap5.put("work_spec_id", new gxa(2, "work_spec_id", "TEXT", null, true, 1));
        HashSet hashSet8 = new HashSet(1);
        hashSet8.add(new bdv("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(TTDownloadField.TT_ID)));
        HashSet hashSet9 = new HashSet(1);
        hashSet9.add(new bg("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id"), Arrays.asList("ASC")));
        bzp bzpVar5 = new bzp("WorkName", hashMap5, hashSet8, hashSet9);
        bzp e6 = bzp.e(crdVar, "WorkName");
        if (!bzpVar5.equals(e6)) {
            return new agu(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + bzpVar5 + "\n Found:\n" + e6);
        }
        HashMap hashMap6 = new HashMap(2);
        hashMap6.put("work_spec_id", new gxa(1, "work_spec_id", "TEXT", null, true, 1));
        hashMap6.put("progress", new gxa(0, "progress", "BLOB", null, true, 1));
        HashSet hashSet10 = new HashSet(1);
        hashSet10.add(new bdv("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(TTDownloadField.TT_ID)));
        bzp bzpVar6 = new bzp("WorkProgress", hashMap6, hashSet10, new HashSet(0));
        bzp e7 = bzp.e(crdVar, "WorkProgress");
        if (!bzpVar6.equals(e7)) {
            return new agu(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + bzpVar6 + "\n Found:\n" + e7);
        }
        HashMap hashMap7 = new HashMap(2);
        hashMap7.put("key", new gxa(1, "key", "TEXT", null, true, 1));
        hashMap7.put("long_value", new gxa(0, "long_value", "INTEGER", null, false, 1));
        bzp bzpVar7 = new bzp("Preference", hashMap7, new HashSet(0), new HashSet(0));
        bzp e8 = bzp.e(crdVar, "Preference");
        if (bzpVar7.equals(e8)) {
            return new agu(true, (String) null);
        }
        return new agu(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + bzpVar7 + "\n Found:\n" + e8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:208:0x0508, code lost:
    
        if (r4 != false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x052e, code lost:
    
        if (r2 != false) goto L143;
     */
    /* JADX WARN: Removed duplicated region for block: B:121:0x054d A[LOOP:7: B:115:0x0441->B:121:0x054d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0571 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0535 A[LOOP:8: B:178:0x0477->B:185:0x0535, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x046f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x051a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List l(cgy cgyVar, cro croVar) {
        fza fzaVar;
        fza fzaVar2;
        fkb fkbVar;
        fkb fkbVar2;
        fza fzaVar3;
        cgy cgyVar2;
        cgy cgyVar3;
        int i;
        afo btjVar;
        gvg e2;
        afo cpbVar;
        List list;
        boolean z;
        int i2;
        boolean am;
        boolean z2;
        boolean z3;
        boolean z4;
        ArrayList arrayList;
        avz avzVar;
        List unmodifiableList;
        fkb fkbVar3;
        fkb fkbVar4;
        dcc dccVar;
        if (croVar instanceof bnf) {
            ((bnf) croVar).b();
            ArrayList arrayList2 = new ArrayList(1);
            Object obj = new Object[]{cgyVar}[0];
            Objects.requireNonNull(obj);
            arrayList2.add(obj);
            return Collections.unmodifiableList(arrayList2);
        }
        if (!(croVar instanceof fgi)) {
            throw new gck("A sealed class, " + bnf.class.getSimpleName() + ", has an unknown implementation");
        }
        fgi fgiVar = (fgi) croVar;
        switch (fgiVar.f16742b) {
            case 0:
                cgy cgyVar4 = fgiVar.f16741a;
                fdy fdyVar = cgyVar4.f12860c;
                fkb l = cgyVar4.l();
                fkb p = cgyVar4.p();
                gvg e3 = l.e();
                gvg e4 = p.e();
                fza fzaVar4 = (fza) e3.f18811c;
                fza fzaVar5 = (fza) e4.f18811c;
                fkb l2 = cgyVar4.l();
                fkb p2 = cgyVar4.p();
                gvg e5 = l2.e();
                gvg e6 = p2.e();
                if (e5 == null || e6 == null) {
                    throw new UnsupportedOperationException("The instruction comparator handler has received a state which does not support block insn info");
                }
                fza fzaVar6 = (fza) e5.f18811c;
                fza fzaVar7 = (fza) e6.f18811c;
                List i3 = e5.i();
                List i4 = e6.i();
                int size = i3.size();
                int size2 = i4.size();
                int min = Math.min(size, size2);
                ArrayList arrayList3 = new ArrayList(min);
                int i5 = 0;
                while (true) {
                    if (i5 < min) {
                        int i6 = i5;
                        eek eekVar = (eek) i4.get((size2 - i5) - 1);
                        List list2 = i4;
                        eek eekVar2 = (eek) i3.get((size - i6) - 1);
                        if (eekVar._p(eekVar2)) {
                            fzaVar = fzaVar4;
                            list = i3;
                            int i7 = 0;
                            while (i7 < eekVar.aj.size()) {
                                gsh j = eekVar.j(i7);
                                fzaVar2 = fzaVar5;
                                gsh j2 = eekVar2.j(i7);
                                if (j == null) {
                                    fkbVar = l2;
                                    fkbVar2 = p2;
                                    fzaVar3 = fzaVar7;
                                    i2 = i7;
                                } else {
                                    i2 = i7;
                                    boolean z5 = j instanceof gks;
                                    j2.getClass();
                                    fkbVar2 = p2;
                                    if (z5 != (j2 instanceof gks)) {
                                        fkbVar = l2;
                                        fzaVar3 = fzaVar7;
                                    } else {
                                        if (z5) {
                                            gks gksVar = (gks) j;
                                            gks gksVar2 = (gks) j2;
                                            if (!gksVar.y(gksVar2)) {
                                                fkbVar = l2;
                                                acq acqVar = acq.s;
                                                fzaVar3 = fzaVar7;
                                                fih fihVar = (fih) gksVar2.l.k(acqVar);
                                                fih fihVar2 = (fih) gksVar.l.k(acqVar);
                                                if (!((fihVar == null || fihVar2 == null) ? false : fihVar2.equals(fihVar))) {
                                                    eek aa = gksVar2.aa();
                                                    eek aa2 = gksVar.aa();
                                                    if (aa != null && aa2 != null && aa._p(aa2)) {
                                                        if (!aa.as() || !aa2.as()) {
                                                            z4 = false;
                                                            break;
                                                        } else {
                                                            List list3 = aa.aj;
                                                            z4 = !Objects.equals(list3, list3);
                                                            break;
                                                        }
                                                    } else {
                                                        z4 = true;
                                                        break;
                                                    }
                                                }
                                                am = j.am();
                                                if (am == j2.am()) {
                                                    if (am) {
                                                        if (!j.am() || !j2.am()) {
                                                            z3 = false;
                                                            break;
                                                        } else {
                                                            z3 = j.equals(j2);
                                                            break;
                                                        }
                                                    }
                                                    z2 = true;
                                                    if (!z2) {
                                                        i7 = i2 + 1;
                                                        fzaVar5 = fzaVar2;
                                                        p2 = fkbVar2;
                                                        l2 = fkbVar;
                                                        fzaVar7 = fzaVar3;
                                                    }
                                                }
                                            }
                                        }
                                        fkbVar = l2;
                                        fzaVar3 = fzaVar7;
                                        am = j.am();
                                        if (am == j2.am()) {
                                        }
                                    }
                                }
                                z2 = false;
                                if (!z2) {
                                }
                            }
                            fzaVar2 = fzaVar5;
                            fkbVar = l2;
                            fkbVar2 = p2;
                            fzaVar3 = fzaVar7;
                            z = true;
                            if (!z) {
                                arrayList3.add(new bne(eekVar2, eekVar));
                                i5 = i6 + 1;
                                i4 = list2;
                                i3 = list;
                                fzaVar4 = fzaVar;
                                fzaVar5 = fzaVar2;
                                p2 = fkbVar2;
                                l2 = fkbVar;
                                fzaVar7 = fzaVar3;
                            }
                        } else {
                            fzaVar = fzaVar4;
                            fzaVar2 = fzaVar5;
                            fkbVar = l2;
                            fkbVar2 = p2;
                            fzaVar3 = fzaVar7;
                            list = i3;
                        }
                        z = false;
                        if (!z) {
                        }
                    } else {
                        fzaVar = fzaVar4;
                        fzaVar2 = fzaVar5;
                        fkbVar = l2;
                        fkbVar2 = p2;
                        fzaVar3 = fzaVar7;
                    }
                }
                int size3 = arrayList3.size();
                cgyVar4.k(e5, size3);
                cgyVar4.k(e6, size3);
                boolean z6 = ((size > size2) || (size < size2)) ? false : true;
                boolean z7 = size3 == min;
                boolean z8 = size3 == 0;
                cgyVar4.f12862e.addAll(arrayList3);
                int i8 = 2;
                if (!z7) {
                    fkb fkbVar5 = fkbVar2;
                    fkb fkbVar6 = fkbVar;
                    fza fzaVar8 = fzaVar3;
                    if (z8) {
                        if (fkbVar6.k().f13675e || fkbVar5.k().f13675e) {
                            cxc k = fkbVar6.k();
                            cxc k2 = fkbVar5.k();
                            if (k.f13675e) {
                                k.f13675e = false;
                                cgyVar3 = new cgy(cgyVar4.f12862e, cgyVar4.h, cgyVar4.f12858a, cgyVar4.f12860c, cgyVar4.f12864g, cgyVar4.f12859b);
                                aqf aqfVar = new aqf(cgyVar3, k, fzaVar6, i8);
                                Class<?> cls = fkbVar5.getClass();
                                fkb f2 = fkbVar5.f(cgyVar3);
                                if (!cls.isInstance(f2)) {
                                    throw new gck("A state of class " + fkbVar5.getClass() + " has duplicated to produce a class of " + f2.getClass());
                                }
                                cgyVar3.f12863f.set((fkb) cls.cast(f2));
                                cgyVar3.f12861d.set(aqfVar);
                            } else {
                                k2.f13675e = false;
                                cgyVar3 = new cgy(cgyVar4.f12862e, cgyVar4.h, cgyVar4.f12858a, cgyVar4.f12860c, cgyVar4.f12864g, cgyVar4.f12859b);
                                Class<?> cls2 = fkbVar6.getClass();
                                fkb f3 = fkbVar6.f(cgyVar3);
                                if (!cls2.isInstance(f3)) {
                                    throw new gck("A state of class " + fkbVar6.getClass() + " has duplicated to produce a class of " + f3.getClass());
                                }
                                fkb fkbVar7 = (fkb) cls2.cast(f3);
                                cgyVar3.f12863f.set(new aqf(cgyVar3, k2, fzaVar8, i8));
                                cgyVar3.f12861d.set(fkbVar7);
                            }
                            cgyVar2 = cgyVar3;
                        }
                    }
                    gne gneVar = gne.NON_MATCHING_INSTRUCTIONS;
                    cgy cgyVar5 = new cgy(cgyVar4.f12862e, cgyVar4.h, cgyVar4.f12858a, cgyVar4.f12860c, cgyVar4.f12864g, cgyVar4.f12859b);
                    fjk fjkVar = new fjk(cgyVar5, gneVar);
                    cgyVar5.f12863f.set(new fjk(cgyVar5, gneVar));
                    cgyVar5.f12861d.set(fjkVar);
                    cgyVar2 = cgyVar5;
                } else if (z6) {
                    cxc g2 = cgyVar4.l().k().g();
                    cxc g3 = cgyVar4.p().k().g();
                    g2.f13674d = false;
                    g3.f13674d = false;
                    g2.f13675e = false;
                    g3.f13675e = false;
                    cgyVar2 = new cgy(cgyVar4.f12862e, cgyVar4.h, cgyVar4.f12858a, cgyVar4.f12860c, cgyVar4.f12864g, cgyVar4.f12859b);
                    aqf aqfVar2 = new aqf(cgyVar2, g2, fzaVar6, i8);
                    cgyVar2.f12863f.set(new aqf(cgyVar2, g3, fzaVar3, i8));
                    cgyVar2.f12861d.set(aqfVar2);
                } else {
                    fza fzaVar9 = fzaVar3;
                    int max = Math.max(size, size2);
                    if (size > size2) {
                        cxc g4 = fkbVar2.k().g();
                        g4.f13674d = false;
                        g4.f13675e = false;
                        cxc k3 = fkbVar.k();
                        k3.f13674d = false;
                        k3.f13675e = false;
                        i = size - max;
                        fkb fkbVar8 = fkbVar;
                        cpbVar = new btj(fkbVar8);
                        e2 = fkbVar8.e();
                        btjVar = new cpb(g4, fzaVar9, 1);
                    } else {
                        cxc g5 = fkbVar.k().g();
                        g5.f13674d = false;
                        g5.f13675e = false;
                        cxc k4 = fkbVar2.k();
                        k4.f13674d = false;
                        k4.f13675e = false;
                        i = size2 - max;
                        fkbVar2.k().f13674d = false;
                        fkb fkbVar9 = fkbVar2;
                        btjVar = new btj(fkbVar9);
                        e2 = fkbVar9.e();
                        cpbVar = new cpb(g5, fzaVar6, 1);
                    }
                    e2.f18813e += i;
                    cgyVar2 = cgy.j(cgyVar4, cpbVar, btjVar);
                }
                if (fzaVar != null && fzaVar2 != null) {
                    ArrayList arrayList4 = new ArrayList(1);
                    Object obj2 = new Object[]{cgyVar2}[0];
                    Objects.requireNonNull(obj2);
                    arrayList4.add(obj2);
                    List unmodifiableList2 = Collections.unmodifiableList(arrayList4);
                    fdyVar.getClass();
                    ((HashMap) fdyVar.f16632a).put(new bne(fzaVar, fzaVar2), unmodifiableList2);
                }
                ArrayList arrayList5 = new ArrayList(1);
                Object obj3 = new Object[]{cgyVar2}[0];
                Objects.requireNonNull(obj3);
                arrayList5.add(obj3);
                return Collections.unmodifiableList(arrayList5);
            case 1:
                cgy n = fgiVar.f16741a.n();
                fdy fdyVar2 = n.f12860c;
                lq lqVar = (lq) n.l();
                lq lqVar2 = (lq) n.p();
                final fza fzaVar10 = lqVar.f19610a;
                ArrayList arrayList6 = lqVar.f19612c;
                final fza fzaVar11 = lqVar2.f19610a;
                final evf m = lqVar.j.m(lqVar);
                final evf m2 = lqVar2.j.m(lqVar2);
                Function function = new Function() { // from class: g.gdr
                    public final /* synthetic */ Function andThen(Function function2) {
                        return j$.util.function.k.$default$andThen(this, function2);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj4) {
                        fkb fkbVar10 = (fkb) obj4;
                        if (fkbVar10.j.m(fkbVar10) == evf.this) {
                            gvg e7 = fkbVar10.e();
                            return Boolean.valueOf(e7 != null && ((fza) e7.f18811c) == fzaVar10);
                        }
                        if (fkbVar10.j.m(fkbVar10) != m2) {
                            throw new gck("Unknown global traverser state. Has a global state been duplicated?");
                        }
                        gvg e8 = fkbVar10.e();
                        return Boolean.valueOf(e8 != null && ((fza) e8.f18811c) == fzaVar11);
                    }

                    public final /* synthetic */ Function compose(Function function2) {
                        return j$.util.function.k.$default$compose(this, function2);
                    }
                };
                ArrayList arrayList7 = lqVar2.f19612c;
                Stack stack = new Stack();
                ArrayList arrayList8 = new ArrayList();
                fgi.c(arrayList8, arrayList7, stack, arrayList7.size());
                Iterator it = arrayList8.iterator();
                while (true) {
                    if (it.hasNext()) {
                        fza[] fzaVarArr = (fza[]) it.next();
                        ArrayList arrayList9 = new ArrayList();
                        int i9 = 0;
                        while (i9 < arrayList6.size()) {
                            fza fzaVar12 = (fza) arrayList6.get(i9);
                            fza fzaVar13 = fzaVarArr[i9];
                            cxc g6 = lqVar.k().g();
                            cxc g7 = lqVar2.k().g();
                            ArrayList arrayList10 = arrayList6;
                            gvg gvgVar = new gvg(fzaVar12, 0, 0);
                            gvg gvgVar2 = new gvg(fzaVar13, 0, 0);
                            cgy cgyVar6 = new cgy(n.f12862e, n.h, n.f12858a, n.f12860c, n.f12864g, n.f12859b);
                            fza[] fzaVarArr2 = fzaVarArr;
                            int i10 = 1;
                            aqf aqfVar3 = new aqf(cgyVar6, g6, gvgVar, i10);
                            cgyVar6.f12863f.set(new aqf(cgyVar6, g7, gvgVar2, i10));
                            cgyVar6.f12861d.set(aqfVar3);
                            arrayList9.add(cgyVar6);
                            i9++;
                            it = it;
                            fzaVarArr = fzaVarArr2;
                            arrayList6 = arrayList10;
                        }
                        ArrayList arrayList11 = arrayList6;
                        Iterator it2 = it;
                        arrayList = new ArrayList();
                        Iterator it3 = arrayList9.iterator();
                        while (it3.hasNext()) {
                            arrayList.addAll(new evf(18, function).q((cgy) it3.next()));
                        }
                        fdyVar2.getClass();
                        boolean containsKey = ((HashMap) fdyVar2.f16632a).containsKey(new bne(fzaVar10, fzaVar11));
                        avzVar = new avz();
                        Iterator it4 = arrayList.iterator();
                        while (it4.hasNext()) {
                            cgy cgyVar7 = (cgy) it4.next();
                            if (cgyVar7.l().i() || cgyVar7.p().i()) {
                                fkb l3 = cgyVar7.l();
                                fkb p3 = cgyVar7.p();
                                boolean z9 = p3 instanceof ty;
                                if ((l3 instanceof ty) && z9) {
                                    ty tyVar = (ty) l3;
                                    ty tyVar2 = (ty) p3;
                                    if (tyVar.f20082a.i() || tyVar2.f20082a.i()) {
                                        avzVar.f10955e = false;
                                    } else {
                                        fkbVar3 = tyVar.f20082a;
                                        fkbVar4 = tyVar2.f20082a;
                                    }
                                } else {
                                    avzVar.f10955e = false;
                                }
                            } else {
                                fkbVar3 = cgyVar7.l();
                                fkbVar4 = cgyVar7.p();
                            }
                            cxc k5 = fkbVar3.k();
                            cxc k6 = fkbVar4.k();
                            avzVar.f10953c &= k5.f13674d;
                            avzVar.f10954d &= k6.f13674d;
                            ((HashSet) avzVar.f10951a).addAll((HashSet) k5.f13671a);
                            ((HashSet) avzVar.f10952b).addAll((HashSet) k6.f13671a);
                        }
                        if (!avzVar.f10955e && !containsKey) {
                            it = it2;
                            arrayList6 = arrayList11;
                        }
                    } else {
                        arrayList = null;
                        avzVar = null;
                    }
                }
                if (arrayList == null || avzVar == null) {
                    gne gneVar2 = gne.NON_MATCHING_PATHS;
                    cgy cgyVar8 = new cgy(n.f12862e, n.h, n.f12858a, n.f12860c, n.f12864g, n.f12859b);
                    fjk fjkVar2 = new fjk(cgyVar8, gneVar2);
                    cgyVar8.f12863f.set(new fjk(cgyVar8, gneVar2));
                    cgyVar8.f12861d.set(fjkVar2);
                    ArrayList arrayList12 = new ArrayList(1);
                    Object obj4 = new Object[]{cgyVar8}[0];
                    Objects.requireNonNull(obj4);
                    arrayList12.add(obj4);
                    unmodifiableList = Collections.unmodifiableList(arrayList12);
                } else {
                    cxc g8 = lqVar.k().g();
                    g8.f13674d = avzVar.f10953c;
                    ((HashSet) g8.f13671a).addAll((HashSet) avzVar.f10951a);
                    cxc g9 = lqVar2.k().g();
                    g9.f13674d = avzVar.f10954d;
                    ((HashSet) g9.f13671a).addAll((HashSet) avzVar.f10952b);
                    gvg gvgVar3 = new gvg(lqVar.f19610a, 0, 0);
                    gvg gvgVar4 = new gvg(lqVar2.f19610a, 0, 0);
                    cgy cgyVar9 = new cgy(n.f12862e, n.h, n.f12858a, n.f12860c, n.f12864g, n.f12859b);
                    int i11 = 1;
                    aqf aqfVar4 = new aqf(cgyVar9, g8, gvgVar3, i11);
                    cgyVar9.f12863f.set(new aqf(cgyVar9, g9, gvgVar4, i11));
                    cgyVar9.f12861d.set(aqfVar4);
                    cgyVar9.o(arrayList);
                    ArrayList arrayList13 = new ArrayList(1);
                    Object obj5 = new Object[]{cgyVar9}[0];
                    Objects.requireNonNull(obj5);
                    arrayList13.add(obj5);
                    unmodifiableList = Collections.unmodifiableList(arrayList13);
                }
                return unmodifiableList;
            default:
                cgy cgyVar10 = fgiVar.f16741a;
                fkb l4 = cgyVar10.l();
                fkb p4 = cgyVar10.p();
                hco h = l4.h();
                hco hcoVar = hco.READY_TO_COMPARE;
                boolean z10 = h == hcoVar;
                boolean z11 = p4.h() == hcoVar;
                if (!z10 || !z11) {
                    if (z10) {
                        dccVar = (dcc) l4;
                    } else {
                        dcc dccVar2 = (dcc) p4;
                        p4 = l4;
                        dccVar = dccVar2;
                    }
                    List list4 = dccVar.f13949b;
                    ArrayList arrayList14 = new ArrayList(list4.size());
                    Iterator it5 = list4.iterator();
                    while (it5.hasNext()) {
                        cpb cpbVar2 = new cpb(dccVar.k(), new gvg((fza) it5.next(), 0, 0), 0);
                        btj btjVar2 = new btj(p4);
                        cgy n2 = cgyVar10.n();
                        arrayList14.add(z10 ? cgy.j(n2, cpbVar2, btjVar2) : cgy.j(n2, btjVar2, cpbVar2));
                    }
                    return arrayList14;
                }
                List list5 = ((dcc) l4).f13949b;
                List list6 = ((dcc) p4).f13949b;
                int size4 = list5.size();
                int size5 = list6.size();
                if (size5 % size4 != 0 || size5 != size4) {
                    gne gneVar3 = gne.UNMERGEABLE_STATE;
                    cgy cgyVar11 = new cgy(cgyVar10.f12862e, cgyVar10.h, cgyVar10.f12858a, cgyVar10.f12860c, cgyVar10.f12864g, cgyVar10.f12859b);
                    fjk fjkVar3 = new fjk(cgyVar11, gneVar3);
                    cgyVar11.f12863f.set(new fjk(cgyVar11, gneVar3));
                    cgyVar11.f12861d.set(fjkVar3);
                    ArrayList arrayList15 = new ArrayList(1);
                    Object obj6 = new Object[]{cgyVar11}[0];
                    Objects.requireNonNull(obj6);
                    arrayList15.add(obj6);
                    return Collections.unmodifiableList(arrayList15);
                }
                ArrayList arrayList16 = new ArrayList(list5);
                ArrayList arrayList17 = new ArrayList(list6);
                int i12 = size5 / size4;
                ArrayList arrayList18 = new ArrayList(i12);
                int i13 = 0;
                while (i13 < i12) {
                    ArrayList arrayList19 = new ArrayList(size4);
                    for (int i14 = 0; i14 < size4; i14++) {
                        arrayList19.add((fza) arrayList17.get((i13 * size4) + i14));
                    }
                    hed hedVar = (hed) cgyVar10.f12860c.f16634c;
                    fkb l5 = cgyVar10.l();
                    fkb p5 = cgyVar10.p();
                    evf m3 = cgyVar10.m(l5);
                    cxc k7 = l5.k();
                    Object obj7 = m3.f16224f;
                    fza an = ffb.an(hedVar, arrayList16);
                    evf m4 = cgyVar10.m(p5);
                    cxc k8 = p5.k();
                    Object obj8 = m4.f16224f;
                    fza an2 = ffb.an(hedVar, arrayList19);
                    ArrayList arrayList20 = arrayList17;
                    cgy cgyVar12 = new cgy(cgyVar10.f12862e, cgyVar10.h, cgyVar10.f12858a, cgyVar10.f12860c, cgyVar10.f12864g, cgyVar10.f12859b);
                    lq lqVar3 = new lq(cgyVar12, k7, arrayList16, an);
                    cgyVar12.f12863f.set(new lq(cgyVar12, k8, arrayList19, an2));
                    cgyVar12.f12861d.set(lqVar3);
                    arrayList18.add(cgyVar12);
                    i13++;
                    arrayList17 = arrayList20;
                }
                return arrayList18;
        }
    }

    @Override // g.bmm
    public void ad(czh czhVar, anx anxVar) {
        ctg ctgVar;
        fzn fznVar = (fzn) this.f16224f;
        cbf cbfVar = (cbf) anxVar.f10540b;
        if (cbfVar == null) {
            fzn.k(fznVar, null);
            return;
        }
        if (cbfVar.getCode() != 0 || (ctgVar = (ctg) cbfVar.getData()) == null) {
            fzk fzkVar = (fzk) fznVar.f17730e;
            cbfVar.getMessage();
            fzkVar.k.setVisibility(8);
            fzkVar.p(8);
            fzkVar.f17708a.setVisibility(8);
            return;
        }
        if (!acw.n(ctgVar.getAllianceArray())) {
            fzn.k(fznVar, ctgVar);
            return;
        }
        fzk fzkVar2 = (fzk) fznVar.f17730e;
        fzkVar2.l.getString(R.string.alliance_empty);
        fzkVar2.k.setVisibility(8);
        fzkVar2.p(8);
        fzkVar2.f17708a.setVisibility(8);
    }

    @Override // g.gtx
    public Object ao() {
        Class cls = (Class) this.f16224f;
        try {
            return cnj.f13172d.c(cls);
        } catch (Exception e2) {
            throw new RuntimeException("Unable to create instance of " + cls + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e2);
        }
    }

    public boolean b(int i, int i2, Bundle bundle) {
        return false;
    }

    public fnz c(int i) {
        return null;
    }

    public fnz d(int i) {
        return null;
    }

    @Override // g.ebz
    public void dq(Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        dxo.d(new efr(this, 4, bitmap));
    }

    @Override // g.fsz
    public boolean g(int i) {
        baq baqVar = (baq) this.f16224f;
        cng f2 = baqVar.y.f(i);
        if (f2 == null) {
            return false;
        }
        if (f2 instanceof glp) {
            fso.ae(baqVar.bc, "", ((glp) f2).f20032b, true);
            return true;
        }
        if (!(f2 instanceof th)) {
            return false;
        }
        fso.ae(baqVar.bc, "", ((th) f2).f20032b, true);
        return true;
    }

    @Override // g.btp
    public void i(x xVar) {
        ((dmr) ((aco) ((emr) ((eie) ((get) this.f16224f).f18002b).f15585g).n).f9979b).f14436a.l(new fc(12, this));
    }

    @Override // g.ghx
    public anp k(View view, anp anpVar) {
        cle cleVar = (cle) this.f16224f;
        cleVar.p = anpVar.f();
        cleVar.o = anpVar.h();
        cleVar.y = anpVar.i();
        cleVar.al();
        return anpVar;
    }

    public gsh m() {
        return ((bgw) this.f16224f).j(1);
    }

    public gjn n(gjn gjnVar) {
        return gjnVar instanceof nu ? gjnVar : new aed(-((ddm) this.f16224f).ep(), gjnVar);
    }

    @Override // g.btp
    public void o(int i) {
        ((dmr) ((aco) ((emr) ((eie) ((get) this.f16224f).f18002b).f15585g).n).f9979b).l(i, true);
    }

    public boolean p(cgy cgyVar, fkb fkbVar, boolean z) {
        Function function = (Function) this.f16224f;
        boolean z2 = function != null && ((Boolean) function.apply(fkbVar)).booleanValue();
        if ((function == null || !z2) && (fkbVar.h() == hco.NOT_READY || (fkbVar.h() == hco.AWAITING_OPTIONAL_PREDECESSOR_MERGE && z))) {
            List l = l(cgyVar, fkbVar.d());
            if (l.size() != 1 || l.get(0) != cgyVar) {
                throw new gck("A traverser handler which was not expected to change path states actually did");
            }
        }
        return z2;
    }

    public List q(cgy cgyVar) {
        List list;
        fza fzaVar;
        fza fzaVar2;
        boolean z;
        char c2;
        int i;
        fza fzaVar3 = null;
        AtomicReference atomicReference = new AtomicReference(null);
        AtomicReference atomicReference2 = new AtomicReference(null);
        cgy cgyVar2 = cgyVar;
        while (true) {
            fdy fdyVar = cgyVar2.f12860c;
            fkb l = cgyVar2.l();
            fkb p = cgyVar2.p();
            if (atomicReference.get() == l && atomicReference2.get() == p) {
                gne gneVar = gne.UNRESOLVABLE_STATES;
                cgy cgyVar3 = new cgy(cgyVar2.f12862e, cgyVar2.h, cgyVar2.f12858a, cgyVar2.f12860c, cgyVar2.f12864g, cgyVar2.f12859b);
                fjk fjkVar = new fjk(cgyVar3, gneVar);
                cgyVar3.f12863f.set(new fjk(cgyVar3, gneVar));
                cgyVar3.f12861d.set(fjkVar);
                ArrayList arrayList = new ArrayList(1);
                Object obj = new Object[]{cgyVar3}[0];
                Objects.requireNonNull(obj);
                arrayList.add(obj);
                list = Collections.unmodifiableList(arrayList);
            } else {
                atomicReference.set(l);
                atomicReference2.set(p);
                if (!l.i() && !p.i()) {
                    if (l.getClass().equals(p.getClass())) {
                        hco h = l.h();
                        hco hcoVar = hco.READY_TO_COMPARE;
                        if (h == hcoVar && p.h() == hcoVar) {
                            gvg e2 = l.e();
                            gvg e3 = p.e();
                            if (e2 == null || e3 == null) {
                                fzaVar = fzaVar3;
                                fzaVar2 = fzaVar;
                            } else {
                                fzaVar = (fza) e2.f18811c;
                                fzaVar2 = (fza) e3.f18811c;
                            }
                            if (fzaVar == null || fzaVar2 == null) {
                                z = false;
                            } else {
                                fdyVar.getClass();
                                z = ((HashMap) fdyVar.f16632a).containsKey(new bne(fzaVar, fzaVar2));
                            }
                            if (z) {
                                fdyVar.getClass();
                                List<cgy> list2 = (List) ((HashMap) fdyVar.f16632a).get(new bne(fzaVar, fzaVar2));
                                ArrayList arrayList2 = new ArrayList(list2.size());
                                for (cgy cgyVar4 : list2) {
                                    fkb l2 = cgyVar4.l();
                                    fkb p2 = cgyVar4.p();
                                    cgy cgyVar5 = new cgy(cgyVar2.f12862e, cgyVar2.h, cgyVar2.f12858a, cgyVar2.f12860c, cgyVar2.f12864g, cgyVar2.f12859b);
                                    ty tyVar = new ty(l2);
                                    cgyVar5.f12863f.set(new ty(p2));
                                    cgyVar5.f12861d.set(tyVar);
                                    cgyVar5.o(list2);
                                    arrayList2.add(cgyVar5);
                                }
                                list = arrayList2;
                            } else {
                                list = l(cgyVar2, p.d());
                            }
                        }
                    }
                    hco h2 = l.h();
                    hco hcoVar2 = hco.READY_TO_COMPARE;
                    boolean z2 = h2 == hcoVar2 || p.h() == hcoVar2;
                    boolean p3 = p(cgyVar2, l, z2);
                    boolean p4 = p(cgyVar2, p, z2);
                    if (!p3 || !p4) {
                        ArrayList arrayList3 = new ArrayList(1);
                        Object obj2 = new Object[]{cgyVar2}[0];
                        Objects.requireNonNull(obj2);
                        arrayList3.add(obj2);
                        list = Collections.unmodifiableList(arrayList3);
                    }
                }
                list = null;
            }
            if (list == null) {
                c2 = 0;
                i = 1;
                break;
            }
            if (list.isEmpty()) {
                i = 1;
                c2 = 0;
                break;
            }
            if (list.size() != 1) {
                evf evfVar = new evf(18, (Function) this.f16224f);
                ArrayList arrayList4 = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList4.addAll(evfVar.q((cgy) it.next()));
                }
                return arrayList4;
            }
            cgyVar2 = (cgy) list.get(0);
            fzaVar3 = null;
        }
        Object[] objArr = new Object[i];
        objArr[c2] = cgyVar2;
        ArrayList arrayList5 = new ArrayList(i);
        Object obj3 = objArr[c2];
        Objects.requireNonNull(obj3);
        arrayList5.add(obj3);
        return Collections.unmodifiableList(arrayList5);
    }

    public void r(HashMap hashMap) {
        Object[] objArr;
        bff.p(hashMap, "values");
        for (Map.Entry entry : hashMap.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            bff.p(str, "key");
            LinkedHashMap linkedHashMap = (LinkedHashMap) this.f16224f;
            if (value == null) {
                value = null;
            } else {
                beq b2 = bii.b(value.getClass());
                if (b2.equals(bii.b(Boolean.TYPE)) ? true : b2.equals(bii.b(Byte.TYPE)) ? true : b2.equals(bii.b(Integer.TYPE)) ? true : b2.equals(bii.b(Long.TYPE)) ? true : b2.equals(bii.b(Float.TYPE)) ? true : b2.equals(bii.b(Double.TYPE)) ? true : b2.equals(bii.b(String.class)) ? true : b2.equals(bii.b(Boolean[].class)) ? true : b2.equals(bii.b(Byte[].class)) ? true : b2.equals(bii.b(Integer[].class)) ? true : b2.equals(bii.b(Long[].class)) ? true : b2.equals(bii.b(Float[].class)) ? true : b2.equals(bii.b(Double[].class)) ? true : b2.equals(bii.b(String[].class))) {
                    continue;
                } else {
                    int i = 0;
                    if (b2.equals(bii.b(boolean[].class))) {
                        boolean[] zArr = (boolean[]) value;
                        String str2 = ow.f19782a;
                        int length = zArr.length;
                        objArr = new Boolean[length];
                        while (i < length) {
                            objArr[i] = Boolean.valueOf(zArr[i]);
                            i++;
                        }
                    } else if (b2.equals(bii.b(byte[].class))) {
                        byte[] bArr = (byte[]) value;
                        String str3 = ow.f19782a;
                        int length2 = bArr.length;
                        objArr = new Byte[length2];
                        while (i < length2) {
                            objArr[i] = Byte.valueOf(bArr[i]);
                            i++;
                        }
                    } else if (b2.equals(bii.b(int[].class))) {
                        int[] iArr = (int[]) value;
                        String str4 = ow.f19782a;
                        int length3 = iArr.length;
                        objArr = new Integer[length3];
                        while (i < length3) {
                            objArr[i] = Integer.valueOf(iArr[i]);
                            i++;
                        }
                    } else if (b2.equals(bii.b(long[].class))) {
                        long[] jArr = (long[]) value;
                        String str5 = ow.f19782a;
                        int length4 = jArr.length;
                        objArr = new Long[length4];
                        while (i < length4) {
                            objArr[i] = Long.valueOf(jArr[i]);
                            i++;
                        }
                    } else if (b2.equals(bii.b(float[].class))) {
                        float[] fArr = (float[]) value;
                        String str6 = ow.f19782a;
                        int length5 = fArr.length;
                        objArr = new Float[length5];
                        while (i < length5) {
                            objArr[i] = Float.valueOf(fArr[i]);
                            i++;
                        }
                    } else {
                        if (!b2.equals(bii.b(double[].class))) {
                            throw new IllegalArgumentException("Key " + str + " has invalid type " + b2);
                        }
                        double[] dArr = (double[]) value;
                        String str7 = ow.f19782a;
                        int length6 = dArr.length;
                        objArr = new Double[length6];
                        while (i < length6) {
                            objArr[i] = Double.valueOf(dArr[i]);
                            i++;
                        }
                    }
                    value = objArr;
                }
            }
            linkedHashMap.put(str, value);
        }
    }

    @Override // g.fsz
    public void s(androidx.recyclerview.widget.p pVar, int i) {
        he heVar;
        baq baqVar = (baq) this.f16224f;
        cng f2 = baqVar.y.f(i);
        if (f2 == null || !(f2 instanceof glp) || (heVar = ((glp) f2).f18362c) == null) {
            return;
        }
        baqVar.ao(heVar, false);
    }

    public String toString() {
        switch (this.f16223e) {
            case 5:
                StringBuilder sb = new StringBuilder();
                bgw bgwVar = (bgw) this.f16224f;
                sb.append(bgwVar.j(0));
                sb.append(" ");
                sb.append(bgwVar.y.b());
                sb.append(' ');
                sb.append(m());
                return sb.toString();
            default:
                return super.toString();
        }
    }

    @Override // g.bez
    public void v(Object obj) {
        etm etmVar = (etm) obj;
        androidx.fragment.app.v vVar = (androidx.fragment.app.v) this.f16224f;
        fob fobVar = (fob) vVar.q.pollFirst();
        if (fobVar == null) {
            return;
        }
        String str = fobVar.mWho;
        int i = fobVar.mRequestCode;
        Fragment l = vVar.ah.l(str);
        if (l == null) {
            return;
        }
        l.onActivityResult(i, etmVar.getResultCode(), etmVar.getData());
    }

    @Override // g.bmm
    public void w(czh czhVar, Throwable th) {
        fzn.k((fzn) this.f16224f, null);
    }

    @Override // com.google.android.gms.internal.ads.zzcaq
    /* renamed from: zza */
    public void mo3zza() {
        ((zzbno) this.f16224f).f4881a.e();
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        switch (this.f16223e) {
            case 26:
                zzbyc.f5056a.remove((dcy) this.f16224f);
                break;
            case 27:
                ((zzcsy) this.f16224f).h.zzn(false);
                break;
            case 28:
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfl)).booleanValue()) {
                    ti.f20033a.f20034ab.zzw(th, "omid native display exp");
                    break;
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        switch (this.f16223e) {
            case 26:
                zzbyc.f5056a.remove((dcy) this.f16224f);
                break;
            case 27:
                ((zzcsy) this.f16224f).h.zzn(true);
                break;
            case 28:
                try {
                    zzcfk zzcfkVar = (zzcfk) ((List) obj).get(0);
                    if (zzcfkVar != null) {
                        zzdkx zzdkxVar = (zzdkx) this.f16224f;
                        zzdkxVar.f6145a.execute(new zzdkv(zzcfkVar));
                        break;
                    }
                } catch (ClassCastException | IndexOutOfBoundsException e2) {
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfl)).booleanValue()) {
                        ti.f20033a.f20034ab.zzw(e2, "omid native display exp");
                        return;
                    }
                    return;
                }
                break;
            default:
                ((zzdyt) this.f16224f).f6695c.zzdo((zzfff) obj);
                break;
        }
    }
}
