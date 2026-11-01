package g;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.bytedance.pangle.ZeusPluginEventCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class dqu extends aiq implements auz {

    /* renamed from: b, reason: collision with root package name */
    public final tl f14650b;

    /* renamed from: g, reason: collision with root package name */
    public final tl f14651g;
    public final tl h;
    public final tl j;
    public final bgb k;
    public final arr o;
    public final tl p;
    public final tl q;
    public final tl r;
    public final tl s;
    public final tl t;

    public dqu(bsz bszVar) {
        super(bszVar);
        this.p = new tl(0);
        this.t = new tl(0);
        this.f14651g = new tl(0);
        this.f14650b = new tl(0);
        this.q = new tl(0);
        this.s = new tl(0);
        this.r = new tl(0);
        this.h = new tl(0);
        this.j = new tl(0);
        this.o = new arr(this);
        this.k = new bgb(2, this);
    }

    public static final tl u(clv clvVar) {
        tl tlVar = new tl(0);
        for (chj chjVar : clvVar.m()) {
            tlVar.put(chjVar.b(), chjVar.c());
        }
        return tlVar;
    }

    public final boolean al(String str, String str2) {
        Boolean bool;
        _e();
        ao(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.f14650b.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final boolean am(String str) {
        _e();
        clv ap = ap(str);
        if (ap == null) {
            return false;
        }
        return ap.f();
    }

    public final void an(String str, gou gouVar) {
        cyg cygVar = (cyg) this.z;
        HashSet hashSet = new HashSet();
        tl tlVar = new tl(0);
        tl tlVar2 = new tl(0);
        tl tlVar3 = new tl(0);
        fui.c();
        dsd dsdVar = cygVar.f13747e;
        bgm bgmVar = cygVar.z;
        if (dsdVar.g(null, gad.f17778c)) {
            Iterator it = Collections.unmodifiableList(((clv) gouVar.k).k()).iterator();
            while (it.hasNext()) {
                hashSet.add(((hbo) it.next()).b());
            }
        }
        for (int i = 0; i < ((clv) gouVar.k).o(); i++) {
            esq esqVar = (esq) ((clv) gouVar.k).g(i).ah();
            if (esqVar.a().isEmpty()) {
                cyg.ak(bgmVar);
                bgmVar.f11520g.h("EventConfig contained null event name");
            } else {
                String a2 = esqVar.a();
                String ai = cux.ai(esqVar.a(), dyd.i, dyd.q);
                if (!TextUtils.isEmpty(ai)) {
                    if (esqVar.i) {
                        esqVar.p();
                        esqVar.i = false;
                    }
                    bzt.b((bzt) esqVar.k, ai);
                    if (gouVar.i) {
                        gouVar.p();
                        gouVar.i = false;
                    }
                    clv.e((clv) gouVar.k, i, (bzt) esqVar.o());
                }
                if (((bzt) esqVar.k).h() && ((bzt) esqVar.k).c()) {
                    tlVar.put(a2, Boolean.TRUE);
                }
                if (((bzt) esqVar.k).i() && ((bzt) esqVar.k).f()) {
                    tlVar2.put(esqVar.a(), Boolean.TRUE);
                }
                if (((bzt) esqVar.k).e()) {
                    if (((bzt) esqVar.k).d() < 2 || ((bzt) esqVar.k).d() > 65535) {
                        cyg.ak(bgmVar);
                        bgmVar.f11520g.e(esqVar.a(), "Invalid sampling rate. Event name, sample rate", Integer.valueOf(((bzt) esqVar.k).d()));
                    } else {
                        tlVar3.put(esqVar.a(), Integer.valueOf(((bzt) esqVar.k).d()));
                    }
                }
            }
        }
        this.t.put(str, hashSet);
        this.f14651g.put(str, tlVar);
        this.f14650b.put(str, tlVar2);
        this.j.put(str, tlVar3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00af, code lost:
    
        if (r4 == null) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ao(String str) {
        Throwable th;
        Cursor cursor;
        fpd fpdVar;
        n();
        _e();
        ckd.bf(str);
        tl tlVar = this.q;
        if (tlVar.get(str) != null) {
            return;
        }
        ggz ggzVar = this.f10133a.l;
        bsz.ag(ggzVar);
        cyg cygVar = (cyg) ggzVar.z;
        ckd.bf(str);
        ggzVar._e();
        ggzVar.n();
        Cursor cursor2 = null;
        try {
            cursor = ggzVar.bg().query("apps", new String[]{"remote_config", "config_last_modified_time", "e_tag"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                } catch (SQLiteException e2) {
                    e = e2;
                    bgm bgmVar = cygVar.z;
                    cyg.ak(bgmVar);
                    bgmVar.f11518b.e(bgm.t(str), "Error querying remote config. appId", e);
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    throw th;
                }
                cursor2.close();
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
            }
        }
        if (cursor.moveToFirst()) {
            byte[] blob = cursor.getBlob(0);
            String string = cursor.getString(1);
            String string2 = cygVar.f13747e.g(null, gad.ah) ? cursor.getString(2) : null;
            if (cursor.moveToNext()) {
                bgm bgmVar2 = cygVar.z;
                cyg.ak(bgmVar2);
                bgmVar2.f11518b.i(bgm.t(str), "Got multiple records for app config, expected one. appId");
            }
            if (blob != null) {
                fpdVar = new fpd((Object) blob, (Object) string, (Object) string2, 17, false);
                cursor.close();
                tl tlVar2 = this.h;
                tl tlVar3 = this.r;
                tl tlVar4 = this.s;
                tl tlVar5 = this.p;
                if (fpdVar == null) {
                    gou gouVar = (gou) x(str, (byte[]) fpdVar.f17190f).ah();
                    an(str, gouVar);
                    tlVar5.put(str, u((clv) gouVar.o()));
                    tlVar.put(str, (clv) gouVar.o());
                    as(str, (clv) gouVar.o());
                    tlVar4.put(str, ((clv) gouVar.k).n());
                    tlVar3.put(str, (String) fpdVar.f17187c);
                    tlVar2.put(str, (String) fpdVar.f17188d);
                    return;
                }
                tlVar5.put(str, null);
                this.f14651g.put(str, null);
                this.t.put(str, null);
                this.f14650b.put(str, null);
                tlVar.put(str, null);
                tlVar4.put(str, null);
                tlVar3.put(str, null);
                tlVar2.put(str, null);
                this.j.put(str, null);
                return;
            }
        }
        cursor.close();
        fpdVar = null;
        tl tlVar22 = this.h;
        tl tlVar32 = this.r;
        tl tlVar42 = this.s;
        tl tlVar52 = this.p;
        if (fpdVar == null) {
        }
    }

    public final clv ap(String str) {
        n();
        _e();
        ckd.bf(str);
        ao(str);
        return (clv) this.q.get(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02dd, code lost:
    
        r7 = (g.azv) r6.next();
        r9.n();
        r9._e();
        g.ckd.bf(r29);
        g.ckd.k(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02f7, code lost:
    
        if (r7.n().isEmpty() == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x032f, code lost:
    
        r25 = r3;
        r3 = r7.z();
        r26 = r5;
        r5 = new android.content.ContentValues();
        r5.put(com.bytedance.sdk.openadsdk.api.plugin.PluginConstants.KEY_APP_ID, r29);
        r5.put("audience_id", java.lang.Integer.valueOf(r26));
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x034a, code lost:
    
        if (r7.g() == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x034c, code lost:
    
        r0 = java.lang.Integer.valueOf(r7.m());
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0356, code lost:
    
        r5.put("filter_id", r0);
        r5.put("event_name", r7.n());
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0366, code lost:
    
        if (r7.e() == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0368, code lost:
    
        r0 = java.lang.Boolean.valueOf(r7.k());
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0372, code lost:
    
        r5.put("session_scoped", r0);
        r5.put("data", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0384, code lost:
    
        if (r9.bg().insertWithOnConflict("event_filters", null, r5, 5) != (-1)) goto L227;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0386, code lost:
    
        r0 = r14.z;
        g.cyg.ak(r0);
        r0.f11518b.i(g.bgm.t(r29), "Failed to insert event filter (got -1). appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0396, code lost:
    
        r0 = r23;
        r1 = r24;
        r3 = r25;
        r5 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x03a0, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x03a1, code lost:
    
        r1 = r14.z;
        g.cyg.ak(r1);
        r1.f11518b.e(g.bgm.t(r29), "Error storing event filter. appId", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x048b, code lost:
    
        r9.n();
        r9._e();
        g.ckd.bf(r29);
        r0 = r9.bg();
        r0.delete("property_filters", "app_id=? and audience_id=?", new java.lang.String[]{r29, java.lang.String.valueOf(r26)});
        r0.delete("event_filters", "app_id=? and audience_id=?", new java.lang.String[]{r29, java.lang.String.valueOf(r26)});
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x04ae, code lost:
    
        r1 = r24;
        r3 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0371, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0355, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x02f9, code lost:
    
        r0 = r14.z;
        g.cyg.ak(r0);
        r0 = r0.f11520g;
        r4 = g.bgm.t(r29);
        r6 = java.lang.Integer.valueOf(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x030e, code lost:
    
        if (r7.g() == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0310, code lost:
    
        r21 = java.lang.Integer.valueOf(r7.m());
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0322, code lost:
    
        r0.f("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r4, r6, java.lang.String.valueOf(r21));
        r25 = r3;
        r26 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0320, code lost:
    
        r21 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x031b, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x03b3, code lost:
    
        r25 = r3;
        r26 = r5;
        r3 = r23.k().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x03c3, code lost:
    
        if (r3.hasNext() == false) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x03c5, code lost:
    
        r5 = (g.dfx) r3.next();
        r9.n();
        r9._e();
        g.ckd.bf(r29);
        g.ckd.k(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x03df, code lost:
    
        if (r5.d().isEmpty() == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x040b, code lost:
    
        r6 = r5.z();
        r7 = new android.content.ContentValues();
        r7.put(r1, r29);
        r23 = r1;
        r7.put(r0, java.lang.Integer.valueOf(r26));
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0424, code lost:
    
        if (r5.j() == false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0426, code lost:
    
        r1 = java.lang.Integer.valueOf(r5.e());
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0430, code lost:
    
        r7.put("filter_id", r1);
        r27 = r0;
        r7.put("property_name", r5.d());
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0442, code lost:
    
        if (r5.f() == false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0444, code lost:
    
        r0 = java.lang.Boolean.valueOf(r5.g());
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x044e, code lost:
    
        r7.put("session_scoped", r0);
        r7.put("data", r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0460, code lost:
    
        if (r9.bg().insertWithOnConflict("property_filters", null, r7, 5) != (-1)) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0475, code lost:
    
        r1 = r23;
        r0 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0462, code lost:
    
        r0 = r14.z;
        g.cyg.ak(r0);
        r0.f11518b.i(g.bgm.t(r29), "Failed to insert property filter (got -1). appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0473, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x047b, code lost:
    
        r1 = r14.z;
        g.cyg.ak(r1);
        r1.f11518b.e(g.bgm.t(r29), "Error storing property filter. appId", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x044d, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x042f, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x03e1, code lost:
    
        r0 = r14.z;
        g.cyg.ak(r0);
        r0 = r0.f11520g;
        r3 = g.bgm.t(r29);
        r4 = java.lang.Integer.valueOf(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x03f6, code lost:
    
        if (r5.j() == false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x03f8, code lost:
    
        r5 = java.lang.Integer.valueOf(r5.e());
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0402, code lost:
    
        r0.f("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r3, r4, java.lang.String.valueOf(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0401, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x028f, code lost:
    
        r6 = r0.k().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x029b, code lost:
    
        if (r6.hasNext() == false) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02a7, code lost:
    
        if (((g.dfx) r6.next()).j() != false) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02a9, code lost:
    
        r0 = r14.z;
        g.cyg.ak(r0);
        r0.f11520g.e(g.bgm.t(r29), "Property filter with no ID. Audience definition ignored. appId, audienceId", java.lang.Integer.valueOf(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x02bf, code lost:
    
        r6 = r0.j().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x02c7, code lost:
    
        r7 = r6.hasNext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02cb, code lost:
    
        r23 = r0;
        r0 = "audience_id";
        r24 = r1;
        r1 = com.bytedance.sdk.openadsdk.api.plugin.PluginConstants.KEY_APP_ID;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02db, code lost:
    
        if (r7 == false) goto L225;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void aq(String str, String str2, String str3, byte[] bArr) {
        SQLiteDatabase sQLiteDatabase;
        byte[] bArr2;
        boolean z;
        boolean z2;
        n();
        _e();
        ckd.bf(str);
        gou gouVar = (gou) x(str, bArr).ah();
        an(str, gouVar);
        as(str, (clv) gouVar.o());
        clv clvVar = (clv) gouVar.o();
        tl tlVar = this.q;
        tlVar.put(str, clvVar);
        this.s.put(str, ((clv) gouVar.k).n());
        this.r.put(str, str2);
        this.h.put(str, str3);
        this.p.put(str, u((clv) gouVar.o()));
        bsz bszVar = this.f10133a;
        ggz ggzVar = bszVar.l;
        bsz.ag(ggzVar);
        ArrayList arrayList = new ArrayList(Collections.unmodifiableList(((clv) gouVar.k).q()));
        cyg cygVar = (cyg) ggzVar.z;
        int i = 0;
        while (i < arrayList.size()) {
            gmg gmgVar = (gmg) ((ham) arrayList.get(i)).ah();
            tl tlVar2 = tlVar;
            if (((ham) gmgVar.k).i() != 0) {
                int i2 = 0;
                while (i2 < ((ham) gmgVar.k).i()) {
                    hae haeVar = (hae) ((ham) gmgVar.k).d(i2).ah();
                    hae haeVar2 = (hae) haeVar.clone();
                    bsz bszVar2 = bszVar;
                    gou gouVar2 = gouVar;
                    String ai = cux.ai(((azv) haeVar.k).n(), dyd.i, dyd.q);
                    if (ai != null) {
                        if (haeVar2.i) {
                            haeVar2.p();
                            haeVar2.i = false;
                        }
                        azv.c((azv) haeVar2.k, ai);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    int i3 = 0;
                    while (i3 < ((azv) haeVar.k).h()) {
                        cth f2 = ((azv) haeVar.k).f(i3);
                        boolean z3 = z2;
                        hae haeVar3 = haeVar;
                        String ai2 = cux.ai(f2.d(), egh.f15482f, egh.f15483g);
                        if (ai2 != null) {
                            ffa ffaVar = (ffa) f2.ah();
                            if (ffaVar.i) {
                                ffaVar.p();
                                ffaVar.i = false;
                            }
                            cth.c((cth) ffaVar.k, ai2);
                            cth cthVar = (cth) ffaVar.o();
                            if (haeVar2.i) {
                                haeVar2.p();
                                haeVar2.i = false;
                            }
                            azv.d((azv) haeVar2.k, i3, cthVar);
                            z2 = true;
                        } else {
                            z2 = z3;
                        }
                        i3++;
                        haeVar = haeVar3;
                    }
                    if (z2) {
                        if (gmgVar.i) {
                            gmgVar.p();
                            gmgVar.i = false;
                        }
                        ham.c((ham) gmgVar.k, i2, (azv) haeVar2.o());
                        arrayList.set(i, (ham) gmgVar.o());
                    }
                    i2++;
                    bszVar = bszVar2;
                    gouVar = gouVar2;
                }
            }
            gou gouVar3 = gouVar;
            bsz bszVar3 = bszVar;
            if (((ham) gmgVar.k).e() != 0) {
                for (int i4 = 0; i4 < ((ham) gmgVar.k).e(); i4++) {
                    dfx h = ((ham) gmgVar.k).h(i4);
                    String ai3 = cux.ai(h.d(), byh.l, byh.f12442a);
                    if (ai3 != null) {
                        dvp dvpVar = (dvp) h.ah();
                        if (dvpVar.i) {
                            dvpVar.p();
                            z = false;
                            dvpVar.i = false;
                        } else {
                            z = false;
                        }
                        dfx.c((dfx) dvpVar.k, ai3);
                        if (gmgVar.i) {
                            gmgVar.p();
                            gmgVar.i = z;
                        }
                        ham.b((ham) gmgVar.k, i4, (dfx) dvpVar.o());
                        arrayList.set(i, (ham) gmgVar.o());
                    }
                }
            }
            i++;
            tlVar = tlVar2;
            bszVar = bszVar3;
            gouVar = gouVar3;
        }
        gou gouVar4 = gouVar;
        tl tlVar3 = tlVar;
        bsz bszVar4 = bszVar;
        ggzVar.n();
        ggzVar._e();
        ckd.bf(str);
        SQLiteDatabase bg = ggzVar.bg();
        bg.beginTransaction();
        try {
            ggzVar.n();
            ggzVar._e();
            ckd.bf(str);
            SQLiteDatabase bg2 = ggzVar.bg();
            bg2.delete("property_filters", "app_id=?", new String[]{str});
            bg2.delete("event_filters", "app_id=?", new String[]{str});
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                try {
                    ham hamVar = (ham) it.next();
                    ggzVar.n();
                    ggzVar._e();
                    ckd.bf(str);
                    ckd.k(hamVar);
                    if (hamVar.g()) {
                        int f3 = hamVar.f();
                        Iterator it2 = hamVar.j().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            if (!((azv) it2.next()).g()) {
                                bgm bgmVar = cygVar.z;
                                cyg.ak(bgmVar);
                                bgmVar.f11520g.e(bgm.t(str), "Event filter with no ID. Audience definition ignored. appId, audienceId", Integer.valueOf(f3));
                                break;
                            }
                        }
                    } else {
                        bgm bgmVar2 = cygVar.z;
                        cyg.ak(bgmVar2);
                        bgmVar2.f11520g.i(bgm.t(str), "Audience with no ID. appId");
                    }
                } catch (Throwable th) {
                    th = th;
                    sQLiteDatabase = bg;
                    sQLiteDatabase.endTransaction();
                    throw th;
                }
            }
            sQLiteDatabase = bg;
            ArrayList arrayList2 = new ArrayList();
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                ham hamVar2 = (ham) it3.next();
                arrayList2.add(hamVar2.g() ? Integer.valueOf(hamVar2.f()) : null);
            }
            ckd.bf(str);
            ggzVar.n();
            ggzVar._e();
            SQLiteDatabase bg3 = ggzVar.bg();
            try {
                long ar = ggzVar.ar("select count(1) from audience_filter_values where app_id=?", new String[]{str});
                int max = Math.max(0, Math.min(ZeusPluginEventCallback.EVENT_START_LOAD, cygVar.f13747e.k(str, gad.be)));
                if (ar > max) {
                    ArrayList arrayList3 = new ArrayList();
                    int i5 = 0;
                    while (true) {
                        if (i5 >= arrayList2.size()) {
                            String join = TextUtils.join(",", arrayList3);
                            StringBuilder sb = new StringBuilder();
                            sb.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
                            sb.append("(" + join + ")");
                            sb.append(" order by rowid desc limit -1 offset ?)");
                            bg3.delete("audience_filter_values", sb.toString(), new String[]{str, Integer.toString(max)});
                            break;
                        }
                        Integer num = (Integer) arrayList2.get(i5);
                        if (num == null) {
                            break;
                        }
                        arrayList3.add(Integer.toString(num.intValue()));
                        i5++;
                    }
                }
            } catch (SQLiteException e2) {
                bgm bgmVar3 = cygVar.z;
                cyg.ak(bgmVar3);
                bgmVar3.f11518b.e(bgm.t(str), "Database error querying filters. appId", e2);
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            try {
                if (gouVar4.i) {
                    gouVar4.p();
                    gouVar4.i = false;
                }
                clv.b((clv) gouVar4.k);
                bArr2 = ((clv) gouVar4.o()).z();
            } catch (RuntimeException e3) {
                bgm bgmVar4 = ((cyg) this.z).z;
                cyg.ak(bgmVar4);
                bgmVar4.f11520g.e(bgm.t(str), "Unable to serialize reduced-size config. Storing full config instead. appId", e3);
                bArr2 = bArr;
            }
            ggz ggzVar2 = bszVar4.l;
            bsz.ag(ggzVar2);
            cyg cygVar2 = (cyg) ggzVar2.z;
            ckd.bf(str);
            ggzVar2._e();
            ggzVar2.n();
            ContentValues contentValues = new ContentValues();
            contentValues.put("remote_config", bArr2);
            contentValues.put("config_last_modified_time", str2);
            dsd dsdVar = cygVar2.f13747e;
            bgm bgmVar5 = cygVar2.z;
            if (dsdVar.g(null, gad.ah)) {
                contentValues.put("e_tag", str3);
            }
            try {
                if (ggzVar2.bg().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                    cyg.ak(bgmVar5);
                    bgmVar5.f11518b.i(bgm.t(str), "Failed to update remote config (got 0). appId");
                }
            } catch (SQLiteException e4) {
                cyg.ak(bgmVar5);
                bgmVar5.f11518b.e(bgm.t(str), "Error storing remote config. appId", e4);
            }
            tlVar3.put(str, (clv) gouVar4.o());
        } catch (Throwable th2) {
            th = th2;
            sQLiteDatabase = bg;
        }
    }

    public final boolean ar(String str, String str2) {
        Boolean bool;
        _e();
        ao(str);
        if ("1".equals(c(str, "measurement.upload.blacklist_internal")) && dkq.al(str2)) {
            return true;
        }
        if ("1".equals(c(str, "measurement.upload.blacklist_public")) && dkq.t(str2)) {
            return true;
        }
        Map map = (Map) this.f14651g.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final void as(String str, clv clvVar) {
        if (clvVar.j() == 0) {
            arr arrVar = this.o;
            arrVar.getClass();
            bff.p(str, "key");
            synchronized (((cuf) arrVar.i)) {
                aoy aoyVar = (aoy) arrVar.f13504f;
                aoyVar.getClass();
                Object remove = ((LinkedHashMap) aoyVar.h).remove(str);
                if (remove != null) {
                    int i = arrVar.h;
                    ctw.j(str, remove);
                    arrVar.h = i - 1;
                }
            }
            return;
        }
        bgm bgmVar = ((cyg) this.z).z;
        cyg.ak(bgmVar);
        bgmVar.f11519c.i(Integer.valueOf(clvVar.j()), "EES programs found");
        kh khVar = (kh) clvVar.l().get(0);
        try {
            eqg eqgVar = new eqg();
            ((HashMap) ((gyf) eqgVar.f15989b.f14866f).f18999a).put("internal.remoteConfig", new apd(this, str, 1));
            ((HashMap) ((gyf) eqgVar.f15989b.f14866f).f18999a).put("internal.appMetadata", new apd(this, str, 2));
            ((HashMap) ((gyf) eqgVar.f15989b.f14866f).f18999a).put("internal.logger", new gzm(4, this));
            eqgVar.e(khVar);
            this.o.m(str, eqgVar);
            bgm bgmVar2 = ((cyg) this.z).z;
            cyg.ak(bgmVar2);
            bgmVar2.f11519c.e(str, "EES program loaded for appId, activities", Integer.valueOf(khVar.b().d()));
            for (evv evvVar : khVar.b().c()) {
                bgm bgmVar3 = ((cyg) this.z).z;
                cyg.ak(bgmVar3);
                bgmVar3.f11519c.i(evvVar.b(), "EES program activity");
            }
        } catch (egg unused) {
            bgm bgmVar4 = ((cyg) this.z).z;
            cyg.ak(bgmVar4);
            bgmVar4.f11518b.i(str, "Failed to load EES program. appId");
        }
    }

    @Override // g.auz
    public final String c(String str, String str2) {
        _e();
        ao(str);
        Map map = (Map) this.p.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    @Override // g.aiq
    public final void i() {
    }

    public final int v(String str, String str2) {
        Integer num;
        _e();
        ao(str);
        Map map = (Map) this.j.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    public final String w(String str) {
        _e();
        ao(str);
        return (String) this.s.get(str);
    }

    public final clv x(String str, byte[] bArr) {
        cyg cygVar = (cyg) this.z;
        if (bArr == null) {
            return clv.d();
        }
        try {
            clv clvVar = (clv) ((gou) fit.j(clv.c(), bArr)).o();
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11519c.e(clvVar.i() ? Long.valueOf(clvVar.h()) : null, "Parsed config. version, gmp_app_id", clvVar.p() ? clvVar.r() : null);
            return clvVar;
        } catch (drq e2) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11520g.e(bgm.t(str), "Unable to merge remote config. appId", e2);
            return clv.d();
        } catch (RuntimeException e3) {
            bgm bgmVar3 = cygVar.z;
            cyg.ak(bgmVar3);
            bgmVar3.f11520g.e(bgm.t(str), "Unable to merge remote config. appId", e3);
            return clv.d();
        }
    }
}
