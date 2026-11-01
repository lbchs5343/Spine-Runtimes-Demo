package com.bytedance.sdk.component.ox.d;

import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class e implements s {

    /* renamed from: d, reason: collision with root package name */
    final com.bytedance.sdk.component.ox.d.dq.ox.o f2106d;
    final k dq;
    private boolean iw;
    final kx ox;
    final boolean p;
    private f s;

    public final class dq extends com.bytedance.sdk.component.ox.d.dq.d {
        private final iw ox;

        public dq(iw iwVar) {
            super("OkHttp %s", e.this.mn());
            this.ox = iwVar;
        }

        public void d() {
            ji jiVar;
            kx kxVar = e.this.ox;
            if (kxVar == null || (jiVar = kxVar.iw) == null) {
                return;
            }
            jiVar.no();
        }

        public String dq() {
            return e.this.ox.dq().mn();
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.d
        public void ox() {
            ji jiVar;
            boolean z = false;
            try {
                try {
                    try {
                        kx kxVar = e.this.ox;
                        if (kxVar != null && (jiVar = kxVar.iw) != null) {
                            jiVar.dq();
                        }
                        bl ia = e.this.ia();
                        try {
                            if (e.this.f2106d.d()) {
                                this.ox.dq(e.this, new IOException("Canceled"));
                            } else {
                                this.ox.dq(e.this, ia);
                            }
                            if (ia.ox == 0) {
                                throw new IOException(ia.p);
                            }
                        } catch (IOException e2) {
                            e = e2;
                            z = true;
                            if (z) {
                                com.bytedance.sdk.component.ox.d.dq.mn.s.d().dq(4, "Callback failure for " + e.this.iw(), e);
                            } else {
                                f unused = e.this.s;
                                this.ox.dq(e.this, e);
                            }
                            e.this.dq.gh().d(this);
                        }
                    } catch (IOException e3) {
                        e = e3;
                    }
                } catch (Exception e4) {
                    f unused2 = e.this.s;
                    new IOException(e4);
                    this.ox.dq(e.this, new IOException(e4));
                }
                e.this.dq.gh().d(this);
            } catch (Throwable th) {
                e.this.dq.gh().d(this);
                throw th;
            }
        }
    }

    private e(k kVar, kx kxVar, boolean z) {
        this.dq = kVar;
        this.ox = kxVar;
        this.p = z;
        this.f2106d = new com.bytedance.sdk.component.ox.d.dq.ox.o(kVar, z);
    }

    public static e dq(k kVar, kx kxVar, boolean z) {
        e eVar = new e(kVar, kxVar, z);
        eVar.s = kVar.wp().dq(eVar);
        return eVar;
    }

    private void kk() {
        this.f2106d.dq(com.bytedance.sdk.component.ox.d.dq.mn.s.d().dq("response.body().close()"));
    }

    @Override // com.bytedance.sdk.component.ox.d.s
    public void d() {
        this.f2106d.dq();
    }

    @Override // com.bytedance.sdk.component.ox.d.s
    public bl dq() throws IOException {
        synchronized (this) {
            if (this.iw) {
                throw new IllegalStateException("Already Executed");
            }
            this.iw = true;
        }
        kk();
        try {
            try {
                ji jiVar = this.ox.iw;
                if (jiVar != null) {
                    jiVar.dq();
                }
                this.dq.gh().dq(this);
                bl ia = ia();
                if (ia == null) {
                    throw new IOException("Canceled");
                }
                if (ia.ox == 0) {
                    throw new IOException(ia.p);
                }
                this.dq.gh().d(this);
                return ia;
            } catch (IOException unused) {
                this.dq.gh().d(this);
                return null;
            } catch (Exception e2) {
                new IOException(e2);
                this.dq.gh().d(this);
                return null;
            }
        } catch (Throwable th) {
            this.dq.gh().d(this);
            throw th;
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.s
    public void dq(iw iwVar) {
        try {
            synchronized (this) {
                if (this.iw) {
                    throw new IllegalStateException("Already Executed");
                }
                this.iw = true;
            }
            kk();
            this.dq.gh().dq(new dq(iwVar));
        } catch (Throwable th) {
            if (iwVar != null) {
                iwVar.dq(this, new IOException(th.getMessage()));
            }
        }
    }

    public bl ia() throws IOException {
        ArrayList arrayList = new ArrayList(this.dq.le());
        arrayList.add(this.f2106d);
        arrayList.add(new com.bytedance.sdk.component.ox.d.dq.ox.dq(this.dq.iw()));
        arrayList.add(new com.bytedance.sdk.component.ox.d.dq.dq.dq(this.dq.mn()));
        arrayList.add(new com.bytedance.sdk.component.ox.d.dq.d.dq(this.dq));
        if (!this.p) {
            arrayList.addAll(this.dq.k());
        }
        arrayList.add(new com.bytedance.sdk.component.ox.d.dq.ox.d(this.p));
        return new com.bytedance.sdk.component.ox.d.dq.ox.mn(arrayList, null, null, null, 0, this.ox, this, this.s, this.dq.dq(), this.dq.d(), this.dq.ox()).dq(this.ox);
    }

    public String iw() {
        StringBuilder sb = new StringBuilder();
        sb.append(ox() ? "canceled " : "");
        sb.append(this.p ? "web socket" : "call");
        sb.append(" to ");
        sb.append(mn());
        return sb.toString();
    }

    public String mn() {
        return this.ox.dq().mp();
    }

    @Override // com.bytedance.sdk.component.ox.d.s
    public boolean ox() {
        return this.f2106d.d();
    }

    @Override // com.bytedance.sdk.component.ox.d.s
    /* renamed from: s, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public e p() {
        return dq(this.dq, this.ox, this.p);
    }
}
