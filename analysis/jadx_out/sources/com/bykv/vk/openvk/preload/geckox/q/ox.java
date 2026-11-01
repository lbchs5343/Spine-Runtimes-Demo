package com.bykv.vk.openvk.preload.geckox.q;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.ig.s;
import com.bykv.vk.openvk.preload.geckox.q.dq.dq;
import com.bykv.vk.openvk.preload.geckox.s.ia;
import com.bykv.vk.openvk.preload.geckox.s.mn;
import com.bykv.vk.openvk.preload.geckox.utils.kk;
import java.util.Map;

/* loaded from: classes.dex */
public final class ox {
    public static com.bykv.vk.openvk.preload.d.d.dq d(final Context context) {
        return new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.7
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar) {
                super.dq(dVar, pVar);
                Pair pair = (Pair) dVar.d(ia.class);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar.iw).dq(((s) pair.second).s());
                dq.p = ((Uri) pair.first).toString();
                dq.f675f = kk.dq(context);
                dq.iw = SystemClock.uptimeMillis();
                dq.fw = Long.valueOf(((s) pair.second).mn().dq());
                dq.cd = Long.valueOf(((s) pair.second).iw().dq());
                dq.ox = ((s) pair.second).s();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar, Throwable th) {
                super.dq(dVar, pVar, th);
                Pair pair = (Pair) dVar.d(ia.class);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar.iw).dq(((s) pair.second).s());
                String uri = ((Uri) pair.first).toString();
                dq.ia = false;
                dq.mn = SystemClock.uptimeMillis();
                dq.s.add(new dq.C0018dq.C0019dq(uri, th.getMessage()));
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar) {
                super.ox(dVar, pVar);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.ia = true;
                dq.mn = SystemClock.uptimeMillis();
            }
        };
    }

    public static com.bykv.vk.openvk.preload.d.d.dq dq(final Context context) {
        return new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.6
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar) {
                super.dq(dVar, pVar);
                Pair pair = (Pair) dVar.d(mn.class);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar.iw).dq(((s) pair.second).s());
                dq.le = ((Uri) pair.first).toString();
                dq.f675f = kk.dq(context);
                dq.wp = SystemClock.uptimeMillis();
                dq.cd = Long.valueOf(((s) pair.second).iw().dq());
                dq.ox = ((s) pair.second).s();
                if (!TextUtils.isEmpty(((s) pair.second).dq())) {
                    dq.dq = ((s) pair.second).dq();
                }
                if (TextUtils.isEmpty(((s) pair.second).d())) {
                    return;
                }
                dq.f673d = ((s) pair.second).d();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar, Throwable th) {
                super.dq(dVar, pVar, th);
                Pair pair = (Pair) dVar.d(mn.class);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar.iw).dq(((s) pair.second).s());
                String uri = ((Uri) pair.first).toString();
                dq.ji = false;
                dq.f674e = SystemClock.uptimeMillis();
                dq.k.add(new dq.C0018dq.C0019dq(uri, th.getMessage()));
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar) {
                super.ox(dVar, pVar);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar.iw).dq(((s) ((Pair) dVar.d(mn.class)).second).s());
                dq.ji = true;
                dq.f674e = SystemClock.uptimeMillis();
            }
        };
    }

    public static com.bykv.vk.openvk.preload.d.d.dq dq(final com.bykv.vk.openvk.preload.geckox.p pVar) {
        return new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.1
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void d(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar2) {
                super.d(dVar, pVar2);
                try {
                    p.dq(com.bykv.vk.openvk.preload.geckox.p.this, d.dq(pVar2.iw));
                } catch (Throwable unused) {
                }
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar2) {
                super.dq(dVar, pVar2);
                try {
                    com.bykv.vk.openvk.preload.geckox.p.this.f669f.put(pVar2.getClass().getSimpleName().concat("onStart"), "");
                } catch (Throwable unused) {
                }
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar2, Throwable th) {
                super.dq(dVar, pVar2, th);
                try {
                    com.bykv.vk.openvk.preload.geckox.p.this.f669f.put(pVar2.getClass().getSimpleName().concat("onException"), th.toString());
                    p.dq(com.bykv.vk.openvk.preload.geckox.p.this, d.dq(pVar2.iw));
                } catch (Throwable unused) {
                }
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar2) {
                super.ox(dVar, pVar2);
                try {
                    com.bykv.vk.openvk.preload.geckox.p.this.f669f.put(pVar2.getClass().getSimpleName().concat("onEnd"), "");
                    if ((pVar2 instanceof com.bykv.vk.openvk.preload.geckox.s.s) && (pVar2.ox instanceof Map)) {
                        com.bykv.vk.openvk.preload.geckox.p.this.f669f.put(pVar2.getClass().getSimpleName(), ((Map) pVar2.ox).get("4ab312f7094810afa84659d3dc6cf0fe"));
                    }
                } catch (Throwable unused) {
                }
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar2, Throwable th) {
                super.ox(dVar, pVar2, th);
                try {
                    com.bykv.vk.openvk.preload.geckox.p.this.f669f.put(pVar2.getClass().getSimpleName().concat("onChainException"), th.toString());
                    p.dq(com.bykv.vk.openvk.preload.geckox.p.this, d.dq(pVar2.iw));
                } catch (Throwable unused) {
                }
            }
        };
    }
}
