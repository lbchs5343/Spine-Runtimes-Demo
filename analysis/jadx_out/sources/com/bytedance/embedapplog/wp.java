package com.bytedance.embedapplog;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes.dex */
class wp extends r {

    /* renamed from: d, reason: collision with root package name */
    private static final long[] f752d = {60000};
    private long ox;
    private boolean p;

    public wp(le leVar) {
        super(leVar);
        this.p = true;
    }

    private void dq(ArrayList<fd> arrayList) {
        int i;
        vw ox = this.dq.ox();
        ArrayList<fd> arrayList2 = new ArrayList<>();
        ArrayList<fd> arrayList3 = new ArrayList<>();
        u p = this.dq.p();
        ArrayList arrayList4 = new ArrayList();
        if (!arrayList.isEmpty()) {
            arrayList4.addAll(arrayList);
        }
        ArrayList<fd> dq = ox.dq();
        if (!dq.isEmpty()) {
            arrayList4.addAll(dq);
        }
        if (arrayList4.size() > 0) {
            Iterator it = arrayList4.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                fd fdVar = (fd) it.next();
                byte[] bArr = fdVar.ig;
                if (bArr == null || bArr.length <= 0) {
                    arrayList2.add(fdVar);
                } else {
                    if (this.p) {
                        le leVar = this.dq;
                        i = yy.dq(v.dq(leVar, leVar.d(), this.dq.s().dq()), fdVar.ig, p);
                    } else {
                        i = 200;
                    }
                    if (yy.dq(i)) {
                        if (arrayList.contains(fdVar)) {
                            fdVar.q = i;
                            arrayList3.add(fdVar);
                        }
                    } else if (i == 200) {
                        arrayList2.add(fdVar);
                    } else {
                        fdVar.q = i;
                        arrayList3.add(fdVar);
                    }
                }
            }
            if (arrayList2.size() > 0 || arrayList3.size() > 0) {
                ox.dq(arrayList2, arrayList3, arrayList);
            }
            jo.p(p() + " " + arrayList2.size() + " " + arrayList4.size(), null);
        }
    }

    @Override // com.bytedance.embedapplog.r
    public long[] d() {
        return f752d;
    }

    @Override // com.bytedance.embedapplog.r
    public long dq() {
        long wp = this.dq.p().wp();
        if (wp > 60000 || wp <= 0) {
            wp = 60000;
        }
        f752d[0] = wp;
        return this.ox + wp;
    }

    public void dq(boolean z) {
        this.p = z;
    }

    @Override // com.bytedance.embedapplog.r
    public boolean ox() {
        Bundle dq;
        long currentTimeMillis = System.currentTimeMillis();
        e mn = this.dq.mn();
        if (mn != null && (dq = mn.dq(currentTimeMillis, 50000L)) != null) {
            dq.dq("play_session", dq, 1);
            dq.d();
        }
        vw ox = this.dq.ox();
        c s = this.dq.s();
        if (s.no() != 0) {
            JSONObject dq2 = yo.dq(s.dq());
            if (dq2 != null) {
                dq(ox.dq(dq2));
                this.ox = System.currentTimeMillis();
                return true;
            }
            jo.d((Throwable) null);
        }
        return false;
    }

    @Override // com.bytedance.embedapplog.r
    public String p() {
        return "s";
    }
}
