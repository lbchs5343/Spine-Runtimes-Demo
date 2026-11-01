package com.bytedance.sdk.openadsdk.core.component.splash;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.d.dq.dq.d;
import com.bytedance.sdk.openadsdk.core.r.cv;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.ref.SoftReference;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class o {

    /* renamed from: d, reason: collision with root package name */
    private j f2745d;
    private Context dq;
    private SoftReference<com.bytedance.sdk.openadsdk.core.component.splash.dq> ia;
    private com.bytedance.sdk.openadsdk.core.o.d.ox iw;
    private SoftReference<com.bytedance.sdk.openadsdk.f.d.dq.d> kk;
    private SoftReference<d> mn;
    private Handler o = new Handler(Looper.getMainLooper());
    private FrameLayout ox;
    private ox p;
    private com.bytedance.sdk.openadsdk.core.d.dq s;

    public interface dq {
        void d();

        void dq();

        void dq(long j);

        Context getActivity();
    }

    private com.bytedance.sdk.openadsdk.core.o.d.ox dq(j jVar, String str) {
        if (jVar.y() == 4) {
            return com.bytedance.sdk.openadsdk.core.o.s.dq(this.dq, jVar, str, false);
        }
        return null;
    }

    private void dq(final com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.iw;
        if (oxVar == null) {
            return;
        }
        oxVar.dq(new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.o.4
            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void d(long j, long j2, String str, String str2) {
                com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.d(j, j2, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq() {
                com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.dq();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(long j, long j2, String str, String str2) {
                com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.dq(j, j2, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(long j, String str, String str2) {
                com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.dq(j, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(String str, String str2) {
                com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.dq(str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void ox(long j, long j2, String str, String str2) {
                com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.ox(j, j2, str, str2);
                }
            }
        });
    }

    private void dq(String str, final ViewGroup viewGroup, com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        j jVar = this.f2745d;
        if (jVar == null || this.dq == null || viewGroup == null) {
            return;
        }
        this.iw = dq(jVar, str);
        EmptyView emptyView = new EmptyView(this.dq, viewGroup, this.f2745d.vb());
        emptyView.setMaterialMeta(this.f2745d);
        emptyView.setAdType(3);
        viewGroup.addView(emptyView);
        if (dVar != null) {
            dq(dVar);
        }
        emptyView.setCallback(new EmptyView.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.o.3
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void d() {
                if (o.this.iw != null) {
                    o.this.iw.kk();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq() {
                ViewGroup viewGroup2;
                Context context;
                if (o.this.iw != null) {
                    o.this.iw.s(false);
                }
                if (o.this.iw == null || (viewGroup2 = viewGroup) == null || viewGroup2.getParent() == null) {
                    return;
                }
                try {
                    context = ((View) viewGroup.getParent()).getContext();
                } catch (Exception unused) {
                    context = null;
                }
                if (context == null || !(context instanceof Activity)) {
                    return;
                }
                o.this.iw.dq((Activity) context);
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(View view) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(boolean z) {
                if (o.this.iw != null && z) {
                    o.this.iw.ia();
                }
                o.this.dq(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox() {
        this.o.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.o.5
            @Override // java.lang.Runnable
            public void run() {
                if (!com.bytedance.sdk.openadsdk.core.o.ox.ox.iw.dq) {
                    o.this.d();
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.ox.ox.iw.dq = false;
                if (o.this.iw instanceof com.bytedance.sdk.openadsdk.core.o.ox.ia) {
                    ((com.bytedance.sdk.openadsdk.core.o.ox.ia) o.this.iw).no().dq(new com.bytedance.sdk.openadsdk.core.o.ox.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.o.5.1
                        @Override // com.bytedance.sdk.openadsdk.core.o.ox.dq.dq
                        public void dq() {
                            o.this.d();
                        }
                    });
                }
            }
        }, 100L);
    }

    public void d() {
        ox oxVar = this.p;
        if (oxVar != null) {
            oxVar.d();
        }
    }

    public ViewGroup dq() {
        return this.ox;
    }

    public void dq(int i) {
        if (i != 1) {
            if (i == 2 && cv.dq(this.f2745d)) {
                this.p = new p();
            }
        } else if (cv.ox(this.f2745d)) {
            this.p = new iw();
        } else if (cv.p(this.f2745d)) {
            this.p = new s();
        }
        ox oxVar = this.p;
        if (oxVar != null) {
            oxVar.dq(this.dq, this.ox, this.f2745d);
            this.p.dq(this.s);
        }
    }

    public void dq(Context context, j jVar) {
        this.dq = context;
        this.f2745d = jVar;
        this.ox = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.ox.setLayoutParams(layoutParams);
        cv.d(this.f2745d);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.le.dq.d dVar, com.bytedance.sdk.openadsdk.core.video.nativevideo.ox oxVar, dq dqVar) {
        ox oxVar2 = this.p;
        if (oxVar2 != null) {
            oxVar2.dq(dVar, oxVar, dqVar);
        }
    }

    public void dq(String str, int i, d dVar, com.bytedance.sdk.openadsdk.f.d.dq.d dVar2) {
        if (dVar2 != null) {
            this.kk = new SoftReference<>(dVar2);
        }
        this.mn = new SoftReference<>(dVar);
        HashMap hashMap = new HashMap();
        hashMap.put("splash_show_type", Integer.valueOf(i));
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(this.dq, this.f2745d, str, 4);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this);
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(hashMap);
        SoftReference<com.bytedance.sdk.openadsdk.f.d.dq.d> softReference = this.kk;
        if (softReference == null) {
            dq(str, this.ox, (com.bytedance.sdk.openadsdk.f.d.dq.d) null);
        } else {
            dq(str, this.ox, softReference.get());
        }
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.iw);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.o.1
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq.d.dq
            public void dq(View view, int i2) {
                if (o.this.mn != null && o.this.mn.get() != null) {
                    ((d) o.this.mn.get()).d();
                }
                o.this.ox();
            }
        });
        this.s = dqVar;
        ox oxVar = this.p;
        if (oxVar != null) {
            oxVar.dq(dqVar);
        }
    }

    public void dq(String str, int i, com.bytedance.sdk.openadsdk.core.component.splash.dq dqVar, com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        this.ia = new SoftReference<>(dqVar);
        if (dVar != null) {
            this.kk = new SoftReference<>(dVar);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("splash_show_type", Integer.valueOf(i));
        com.bytedance.sdk.openadsdk.core.d.dq dqVar2 = new com.bytedance.sdk.openadsdk.core.d.dq(this.dq, this.f2745d, str, 4);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar2.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this);
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dqVar2.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(hashMap);
        SoftReference<com.bytedance.sdk.openadsdk.f.d.dq.d> softReference = this.kk;
        if (softReference == null) {
            dq(str, this.ox, (com.bytedance.sdk.openadsdk.f.d.dq.d) null);
        } else {
            dq(str, this.ox, softReference.get());
        }
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar2.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.iw);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar2.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.o.2
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq.d.dq
            public void dq(View view, int i2) {
                if (o.this.ia != null && o.this.ia.get() != null) {
                    ((com.bytedance.sdk.openadsdk.core.component.splash.dq) o.this.ia.get()).d();
                }
                o.this.ox();
            }
        });
        this.s = dqVar2;
        ox oxVar = this.p;
        if (oxVar != null) {
            oxVar.dq(dqVar2);
        }
    }

    public void dq(boolean z) {
        ox oxVar = this.p;
        if (oxVar != null) {
            oxVar.dq(z);
        }
    }
}
