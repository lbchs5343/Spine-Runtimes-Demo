package com.ss.android.downloadlib.d;

/* loaded from: classes.dex */
public class d {
    public void dq(final com.ss.android.downloadad.api.dq.d dVar, final mn mnVar, int i) {
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.d.d.1
            @Override // java.lang.Runnable
            public void run() {
                if (kk.dq(dVar)) {
                    mnVar.dq(false);
                } else if (iw.dq(dVar)) {
                    iw.dq(dVar, new ia() { // from class: com.ss.android.downloadlib.d.d.1.1
                        @Override // com.ss.android.downloadlib.d.ia
                        public void dq(boolean z) {
                            mnVar.dq(z);
                        }
                    });
                } else {
                    mnVar.dq(false);
                }
            }
        }, i);
    }
}
