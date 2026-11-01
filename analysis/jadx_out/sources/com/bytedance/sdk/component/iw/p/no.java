package com.bytedance.sdk.component.iw.p;

/* loaded from: classes.dex */
public class no extends dq {
    private void dq(int i, String str, Throwable th, com.bytedance.sdk.component.iw.ox.ox oxVar) {
        oxVar.dq(new ia(i, str, th));
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public String dq() {
        return "net_request";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v6 */
    @Override // com.bytedance.sdk.component.iw.p.kk
    public void dq(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        com.bytedance.sdk.component.iw.ox.ox oxVar2;
        final com.bytedance.sdk.component.iw.ox.iw r = oxVar.r();
        com.bytedance.sdk.component.iw.p p = r.p();
        oxVar.dq(false);
        try {
            com.bytedance.sdk.component.iw.iw call2 = p.call2(new com.bytedance.sdk.component.iw.d.ox(oxVar.d(), oxVar.q(), oxVar.jy(), oxVar.k()));
            int d2 = call2.d();
            oxVar.dq(call2.dq());
            oxVar2 = 200;
            try {
                if (call2.d() != 200) {
                    r.ia();
                    String.valueOf(call2);
                    Object ox = call2.ox();
                    dq(d2, call2.p(), ox instanceof Throwable ? (Throwable) ox : null, oxVar);
                    return;
                }
                final byte[] bArr = (byte[]) call2.ox();
                oxVar.dq(new d(bArr, call2));
                final String iw = oxVar.iw();
                final com.bytedance.sdk.component.iw.d i = oxVar.i();
                if (i.ox()) {
                    r.d(oxVar.i()).dq(iw, bArr);
                }
                final com.bytedance.sdk.component.iw.ox.ox oxVar3 = oxVar;
                try {
                    r.iw().submit(new Runnable() { // from class: com.bytedance.sdk.component.iw.p.no.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (i.p()) {
                                r.ox(oxVar3.i()).dq(iw, bArr);
                            }
                        }
                    });
                } catch (Throwable th) {
                    th = th;
                    oxVar2 = oxVar3;
                    dq(1004, "net request failed!", th, oxVar2);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            oxVar2 = oxVar;
        }
    }
}
