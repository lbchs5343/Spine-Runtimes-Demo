package g;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import java.io.IOException;
import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class dhh {

    /* renamed from: a, reason: collision with root package name */
    public Object f14173a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f14174b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14175c = 1;

    /* renamed from: d, reason: collision with root package name */
    public long f14176d;

    /* renamed from: e, reason: collision with root package name */
    public Object f14177e;

    public dhh(long j, Bundle bundle, String str, String str2) {
        this.f14177e = str;
        this.f14173a = str2;
        this.f14174b = bundle;
        this.f14176d = j;
    }

    public dhh(amr amrVar) {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        bff.p(amrVar, "taskRunner");
        bff.p(timeUnit, "timeUnit");
        this.f14176d = timeUnit.toNanos(5L);
        this.f14177e = amrVar.l();
        this.f14173a = new lm(this, awf.ad(new StringBuilder(), erq.f16047g, " ConnectionPool"), 2);
        this.f14174b = new ConcurrentLinkedQueue();
    }

    public /* synthetic */ dhh(dqg dqgVar) {
        this.f14174b = dqgVar;
    }

    public static dhh f(ctf ctfVar) {
        String str = ctfVar.zza;
        String str2 = ctfVar.zzc;
        return new dhh(ctfVar.zzd, ctfVar.zzb.zzc(), str, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0115, code lost:
    
        if (r5 != null) goto L37;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01e1  */
    /* JADX WARN: Type inference failed for: r0v52, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7, types: [g.kk] */
    /* JADX WARN: Type inference failed for: r16v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public kk g(String str, kk kkVar) {
        ?? r16;
        long j;
        Cursor cursor;
        boolean z;
        Pair pair;
        Object obj;
        String u = kkVar.u();
        cwe q = kkVar.q();
        dqg dqgVar = (dqg) this.f14174b;
        cyg cygVar = (cyg) dqgVar.z;
        bsz bszVar = dqgVar.f10133a;
        bszVar.bb();
        Long l = (Long) fit.t("_eid", kkVar);
        if (l != null) {
            if (u.equals("_ep")) {
                bszVar.bb();
                String str2 = (String) fit.t("_en", kkVar);
                Cursor cursor2 = null;
                if (TextUtils.isEmpty(str2)) {
                    bgm bgmVar = cygVar.z;
                    cyg.ak(bgmVar);
                    bgmVar.f11517a.i(l, "Extra parameter without an event name. eventId");
                    return null;
                }
                if (((kk) this.f14177e) == null || ((Long) this.f14173a) == null || l.longValue() != ((Long) this.f14173a).longValue()) {
                    ggz ggzVar = bszVar.l;
                    bsz.ag(ggzVar);
                    cyg cygVar2 = (cyg) ggzVar.z;
                    ggzVar._e();
                    ggzVar.n();
                    try {
                        try {
                            r16 = 0;
                        } catch (Throwable th) {
                            th = th;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            throw th;
                        }
                        try {
                            cursor = ggzVar.bg().rawQuery("select main_event, children_to_process from main_event_params where app_id=? and event_id=?", new String[]{str, l.toString()});
                            try {
                                if (cursor.moveToFirst()) {
                                    j = 0;
                                    try {
                                        try {
                                            pair = Pair.create((kk) ((btw) fit.j(kk.g(), cursor.getBlob(0))).o(), Long.valueOf(cursor.getLong(1)));
                                            cursor.close();
                                        } catch (SQLiteException e2) {
                                            e = e2;
                                            bgm bgmVar2 = cygVar2.z;
                                            cyg.ak(bgmVar2);
                                            bgmVar2.f11518b.i(e, "Error selecting main event");
                                            r16 = r16;
                                            z = r16;
                                        }
                                    } catch (IOException e3) {
                                        bgm bgmVar3 = cygVar2.z;
                                        cyg.ak(bgmVar3);
                                        bgmVar3.f11518b.f("Failed to merge main event. appId, eventId", bgm.t(str), l, e3);
                                        z = 0;
                                        cursor.close();
                                        r16 = z;
                                        pair = r16;
                                        if (pair != null) {
                                        }
                                        bgm bgmVar4 = cygVar.z;
                                        cyg.ak(bgmVar4);
                                        bgmVar4.f11517a.e(str2, "Extra parameter without existing main event. eventName, eventId", l);
                                        return r16;
                                    }
                                } else {
                                    bgm bgmVar5 = cygVar2.z;
                                    cyg.ak(bgmVar5);
                                    bgmVar5.f11519c.h("Main event not found");
                                    cursor.close();
                                    pair = null;
                                    j = 0;
                                }
                            } catch (SQLiteException e4) {
                                e = e4;
                                j = 0;
                            }
                        } catch (SQLiteException e5) {
                            e = e5;
                            j = 0;
                            cursor = r16;
                            bgm bgmVar22 = cygVar2.z;
                            cyg.ak(bgmVar22);
                            bgmVar22.f11518b.i(e, "Error selecting main event");
                            r16 = r16;
                            z = r16;
                        } catch (Throwable th2) {
                            th = th2;
                            cursor2 = r16;
                            if (cursor2 != null) {
                            }
                            throw th;
                        }
                    } catch (SQLiteException e6) {
                        e = e6;
                        r16 = 0;
                    } catch (Throwable th3) {
                        th = th3;
                        r16 = 0;
                    }
                    if (pair != null || (obj = pair.first) == null) {
                        bgm bgmVar42 = cygVar.z;
                        cyg.ak(bgmVar42);
                        bgmVar42.f11517a.e(str2, "Extra parameter without existing main event. eventName, eventId", l);
                        return r16;
                    }
                    this.f14177e = (kk) obj;
                    this.f14176d = ((Long) pair.second).longValue();
                    bszVar.bb();
                    this.f14173a = (Long) fit.t("_eid", (kk) this.f14177e);
                } else {
                    j = 0;
                }
                long j2 = this.f14176d - 1;
                this.f14176d = j2;
                if (j2 <= j) {
                    ggz ggzVar2 = bszVar.l;
                    bsz.ag(ggzVar2);
                    cyg cygVar3 = (cyg) ggzVar2.z;
                    ggzVar2._e();
                    bgm bgmVar6 = cygVar3.z;
                    cyg.ak(bgmVar6);
                    bgmVar6.f11519c.i(str, "Clearing complex main event info. appId");
                    try {
                        ggzVar2.bg().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                    } catch (SQLiteException e7) {
                        bgm bgmVar7 = cygVar3.z;
                        cyg.ak(bgmVar7);
                        bgmVar7.f11518b.i(e7, "Error clearing complex main event");
                    }
                } else {
                    ggz ggzVar3 = bszVar.l;
                    bsz.ag(ggzVar3);
                    ggzVar3.w(str, l, this.f14176d, (kk) this.f14177e);
                }
                ?? arrayList = new ArrayList();
                for (asm asmVar : ((kk) this.f14177e).q()) {
                    bszVar.bb();
                    if (fit.p(asmVar.u(), kkVar) == null) {
                        arrayList.add(asmVar);
                    }
                }
                if (arrayList.isEmpty()) {
                    bgm bgmVar8 = cygVar.z;
                    cyg.ak(bgmVar8);
                    bgmVar8.f11517a.i(str2, "No unique parameters in main event. eventName");
                } else {
                    arrayList.addAll(q);
                    q = arrayList;
                }
                u = str2;
            } else {
                this.f14173a = l;
                this.f14177e = kkVar;
                bszVar.bb();
                Object t = fit.t("_epc", kkVar);
                long longValue = ((Long) (t != null ? t : 0L)).longValue();
                this.f14176d = longValue;
                if (longValue <= 0) {
                    bgm bgmVar9 = cygVar.z;
                    cyg.ak(bgmVar9);
                    bgmVar9.f11517a.i(u, "Complex event with zero extra param count. eventName");
                } else {
                    ggz ggzVar4 = bszVar.l;
                    bsz.ag(ggzVar4);
                    ggzVar4.w(str, l, this.f14176d, kkVar);
                }
            }
        }
        btw btwVar = (btw) kkVar.ah();
        btwVar.a(u);
        if (btwVar.i) {
            btwVar.p();
            btwVar.i = false;
        }
        kk.f((kk) btwVar.k);
        if (btwVar.i) {
            btwVar.p();
            btwVar.i = false;
        }
        kk.e((kk) btwVar.k, q);
        return (kk) btwVar.o();
    }

    public boolean h(cbm cbmVar, ib ibVar, List list, boolean z) {
        Iterator it = ((ConcurrentLinkedQueue) this.f14174b).iterator();
        while (true) {
            if (!it.hasNext()) {
                return false;
            }
            gba gbaVar = (gba) it.next();
            bff.e(gbaVar, "connection");
            synchronized (gbaVar) {
                if (z) {
                    try {
                        if (!(gbaVar.s != null)) {
                            continue;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (gbaVar.aa(cbmVar, list)) {
                    ibVar.s(gbaVar);
                    return true;
                }
            }
        }
    }

    public int i(gba gbaVar, long j) {
        byte[] bArr = erq.f16043c;
        ArrayList arrayList = gbaVar.l;
        int i = 0;
        while (i < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                String str = "A connection to " + gbaVar.o.f15500a.f12590a + " was leaked. Did you forget to close a response body?";
                bop bopVar = bop.h;
                bop.h.o(((dqb) reference).f14630a, str);
                arrayList.remove(i);
                gbaVar.p = true;
                if (arrayList.isEmpty()) {
                    gbaVar.q = j - this.f14176d;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }

    public ctf j() {
        return new ctf((String) this.f14177e, new cde(new Bundle((Bundle) this.f14174b)), (String) this.f14173a, this.f14176d);
    }

    public String toString() {
        switch (this.f14175c) {
            case 1:
                String str = (String) this.f14173a;
                String str2 = (String) this.f14177e;
                String obj = ((Bundle) this.f14174b).toString();
                StringBuilder o = tn.o("origin=", str, ",name=", str2, ",params=");
                o.append(obj);
                return o.toString();
            default:
                return super.toString();
        }
    }
}
