package com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.f.d.d.jy;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes3.dex */
public class iw extends RecyclerView.dq {

    /* renamed from: d, reason: collision with root package name */
    private Context f3254d;
    private List<jy> dq;
    private int iw;
    private List<j> kk;
    private ExpressOnePointFiveView o;
    private int ox;
    private d p;
    private int s;
    private HashSet<Integer> mn = new HashSet<>();
    private int ia = 0;

    public interface d {
        void dq();
    }

    public static class dq extends RecyclerView.k {
        private FrameLayout dq;

        public dq(View view) {
            super(view);
            this.dq = (FrameLayout) view.findViewById(2114387617);
        }
    }

    public iw(Context context, ExpressOnePointFiveView expressOnePointFiveView, int i, int i2) {
        this.s = 0;
        this.iw = 0;
        this.f3254d = context;
        this.s = ce.ox(context, i + 3);
        this.iw = ce.ox(context, i2);
        this.o = expressOnePointFiveView;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public long d(int i) {
        return i;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public int dq() {
        List<j> list = this.kk;
        if (list == null || list.size() == 0) {
            return 0;
        }
        return this.kk.size() + 1;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public int dq(int i) {
        List<j> list = this.kk;
        if (list == null || list.size() == 0) {
            return 0;
        }
        return i + 1 == dq() ? 2 : 1;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public RecyclerView.k dq(ViewGroup viewGroup, int i) {
        if (i != 1) {
            if (i != 2) {
                return null;
            }
            return new com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq(com.bytedance.sdk.openadsdk.res.s.ij(this.f3254d));
        }
        View ws = com.bytedance.sdk.openadsdk.res.s.ws(this.f3254d);
        ws.setLayoutParams(new RecyclerView.o(this.s, this.iw));
        return new dq(ws);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public void dq(RecyclerView.k kVar, int i) {
        jy jyVar;
        d dVar;
        jy jyVar2 = null;
        if (kVar instanceof dq) {
            try {
                jyVar = this.dq.get(i);
            } catch (Throwable unused) {
            }
            if (jyVar == null) {
                try {
                    jyVar2 = this.o.dq(this.kk.get(i), i);
                    this.dq.set(i, jyVar2);
                } catch (Throwable unused2) {
                    jyVar2 = jyVar;
                }
                jyVar = jyVar2;
            }
            if (jyVar == null) {
                return;
            }
            dq dqVar = (dq) kVar;
            View dq2 = jyVar.dq();
            if (dq2 != null) {
                if (dq2 instanceof NativeExpressView) {
                    HashMap hashMap = new HashMap(1);
                    hashMap.put(TTDownloadField.TT_REFER, "ad");
                    NativeExpressView nativeExpressView = (NativeExpressView) dq2;
                    ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) nativeExpressView.getClickListener().dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(hashMap);
                    ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) nativeExpressView.getClickCreativeListener().dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(hashMap);
                }
                Object tag = dq2.getTag(2114387470);
                if (!(tag instanceof Boolean) || !((Boolean) tag).booleanValue()) {
                    jyVar.dq().setTag(2114387470, Boolean.TRUE);
                    jyVar.p();
                }
                try {
                    dqVar.dq.removeAllViews();
                    if (dq2.getParent() != null) {
                        ((ViewGroup) dq2.getParent()).removeView(dq2);
                    }
                    dqVar.dq.addView(dq2);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        } else if (kVar instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq) {
            com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq dqVar2 = (com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq) kVar;
            dqVar2.d((View) null);
            if (this.ox == 1) {
                dqVar2.dq("松手查看更多", "左滑查看更多");
            } else {
                dqVar2.dq("看完啦，刷新再看看", "看完啦，刷新再看看");
            }
            dqVar2.dq(this.iw);
        }
        try {
            if (this.ox == 2 && i + 1 == this.dq.size() && (dVar = this.p) != null) {
                dVar.dq();
            }
            if (this.mn == null || i + 1 == dq()) {
                return;
            }
            this.mn.add(Integer.valueOf(i));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public void dq(d dVar) {
        this.p = dVar;
    }

    public void dq(List<j> list, List<jy> list2, int i) {
        this.kk = list;
        this.dq = list2;
        this.ox = i;
        this.mn.clear();
        this.ia = 0;
        ox();
    }

    public int p() {
        List<jy> list = this.dq;
        int size = list == null ? 0 : list.size();
        int size2 = this.mn.size() - this.ia;
        this.ia = this.mn.size();
        if (size2 < 0) {
            return 0;
        }
        return size2 < size ? size2 : size;
    }
}
