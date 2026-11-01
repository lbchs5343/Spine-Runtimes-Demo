package com.bytedance.embedapplog;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class e {
    private static final AtomicLong iw = new AtomicLong(1000);
    private static dq jy;

    /* renamed from: d, reason: collision with root package name */
    private final c f714d;
    private final u dq;
    private int ia;
    private int ig;
    private long kk = -1;
    private long mn;
    private String mp;
    private long no;
    private volatile boolean o;
    private bu ox;
    private bu p;
    private jw q;
    private String s;

    public static class dq extends ws {
        private dq() {
        }
    }

    public e(c cVar, u uVar) {
        this.f714d = cVar;
        this.dq = uVar;
    }

    private synchronized void dq(ds dsVar, ArrayList<ds> arrayList, boolean z) {
        try {
            long j = dsVar instanceof dq ? -1L : dsVar.f713d;
            this.s = UUID.randomUUID().toString();
            iw.set(1000L);
            this.kk = j;
            this.o = z;
            this.no = 0L;
            this.mn = 0L;
            if (jo.f730d) {
                jo.dq("startSession, " + this.s + ", hadUi:" + z + " data:" + dsVar, null);
            }
            if (z) {
                Calendar calendar = Calendar.getInstance();
                StringBuilder sb = new StringBuilder();
                sb.append(calendar.get(1));
                sb.append(calendar.get(2));
                sb.append(calendar.get(5));
                String sb2 = sb.toString();
                if (TextUtils.isEmpty(this.mp)) {
                    this.mp = this.dq.d();
                    this.ig = this.dq.ox();
                }
                if (sb2.equals(this.mp)) {
                    this.ig++;
                } else {
                    this.mp = sb2;
                    this.ig = 1;
                }
                this.dq.dq(sb2, this.ig);
                this.ia = 0;
                this.mn = dsVar.f713d;
            }
            if (j != -1) {
                jw jwVar = new jw(false);
                jwVar.p = this.s;
                jwVar.ox = p();
                jwVar.f713d = this.kk;
                jwVar.q = !this.o;
                jwVar.mp = this.f714d.ox();
                jwVar.ig = this.f714d.d();
                jwVar.iw = com.bytedance.embedapplog.dq.o();
                jwVar.mn = com.bytedance.embedapplog.dq.kk();
                if (this.dq.i()) {
                    jwVar.ia = com.bytedance.embedapplog.dq.s();
                }
                arrayList.add(jwVar);
                this.q = jwVar;
                if (jo.f730d) {
                    jo.dq("gen launch, " + jwVar.p + ", hadUi:" + z, null);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static boolean dq(ds dsVar) {
        if (dsVar instanceof bu) {
            return ((bu) dsVar).o();
        }
        return false;
    }

    public static long p() {
        return iw.incrementAndGet();
    }

    public static dq s() {
        if (jy == null) {
            jy = new dq();
        }
        jy.f713d = System.currentTimeMillis();
        return jy;
    }

    public void d(ds dsVar) {
        if (dsVar != null) {
            if (this.dq.i()) {
                dsVar.ia = com.bytedance.embedapplog.dq.s();
            }
            dsVar.iw = com.bytedance.embedapplog.dq.o();
            dsVar.mn = com.bytedance.embedapplog.dq.kk();
            dsVar.p = this.s;
            dsVar.ox = p();
        }
    }

    public boolean d() {
        return this.o;
    }

    public synchronized Bundle dq(long j, long j2) {
        Bundle bundle;
        if (this.dq.s() && ox()) {
            long j3 = this.mn;
            if (j3 > 0 && j - j3 > j2) {
                bundle = new Bundle();
                bundle.putInt("session_no", this.ig);
                int i = this.ia + 1;
                this.ia = i;
                bundle.putInt("send_times", i);
                bundle.putLong("current_duration", (j - this.mn) / 1000);
                bundle.putString("session_start_time", ds.d(this.kk));
                this.mn = j;
            }
        }
        bundle = null;
        return bundle;
    }

    public String dq() {
        return this.s;
    }

    public boolean dq(ds dsVar, ArrayList<ds> arrayList) {
        boolean z = dsVar instanceof bu;
        boolean dq2 = dq(dsVar);
        boolean z2 = true;
        if (this.kk == -1) {
            dq(dsVar, arrayList, dq(dsVar));
        } else if (this.o || !dq2) {
            long j = this.no;
            if (j == 0 || dsVar.f713d <= this.dq.k() + j) {
                if (this.kk > dsVar.f713d + 7200000) {
                    dq(dsVar, arrayList, dq2);
                } else {
                    z2 = false;
                }
            } else if (!yo.d() && yo.dq()) {
                dq(dsVar, arrayList, dq2);
            }
        } else {
            dq(dsVar, arrayList, true);
        }
        if (z) {
            bu buVar = (bu) dsVar;
            if (buVar.o()) {
                this.no = 0L;
                arrayList.add(dsVar);
                if (TextUtils.isEmpty(buVar.mp)) {
                    bu buVar2 = this.p;
                    if (buVar2 == null || (buVar.f713d - buVar2.f713d) - buVar2.ig >= 500) {
                        bu buVar3 = this.ox;
                        if (buVar3 != null && (buVar.f713d - buVar3.f713d) - buVar3.ig < 500) {
                            buVar.mp = buVar3.q;
                        }
                    } else {
                        buVar.mp = buVar2.q;
                    }
                }
            } else {
                Bundle dq3 = dq(dsVar.f713d, 0L);
                if (dq3 != null) {
                    com.bytedance.embedapplog.dq.dq("play_session", dq3);
                }
                this.no = buVar.f713d;
                arrayList.add(dsVar);
                if (buVar.no()) {
                    this.ox = buVar;
                } else {
                    this.p = buVar;
                    this.ox = null;
                }
            }
        } else if (!(dsVar instanceof dq)) {
            arrayList.add(dsVar);
        }
        d(dsVar);
        return z2;
    }

    public boolean ox() {
        return d() && this.no == 0;
    }
}
