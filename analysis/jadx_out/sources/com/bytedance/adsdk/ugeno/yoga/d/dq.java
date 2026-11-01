package com.bytedance.adsdk.ugeno.yoga.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.adsdk.ugeno.yoga.YogaLayout;
import com.bytedance.adsdk.ugeno.yoga.iw;
import com.bytedance.adsdk.ugeno.yoga.mp;
import com.bytedance.adsdk.ugeno.yoga.o;
import com.bytedance.adsdk.ugeno.yoga.p;
import com.bytedance.adsdk.ugeno.yoga.q;
import com.bytedance.adsdk.ugeno.yoga.s;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.awf;
import g.byh;
import g.dlv;
import g.dxo;
import g.ebz;
import g.ewk;
import g.eyh;
import g.fzn;

/* loaded from: classes.dex */
public class dq extends eyh {

    /* renamed from: d, reason: collision with root package name */
    private s f693d;
    private com.bytedance.adsdk.ugeno.yoga.dq nt;
    private o ny;
    private q ox;
    private iw p;
    private com.bytedance.adsdk.ugeno.yoga.dq tv;

    /* renamed from: com.bytedance.adsdk.ugeno.yoga.d.dq$dq, reason: collision with other inner class name */
    public static class C0022dq extends ewk {
        public float bl;

        /* renamed from: c, reason: collision with root package name */
        public int f696c;
        public float ce;

        /* renamed from: e, reason: collision with root package name */
        public int f697e;
        private boolean er;
        public float h;
        public int ir;
        private boolean j;
        public int ji;
        public float kx;
        public int n;
        private boolean nh;
        private boolean ob;
        public int op;
        public int u;
        private boolean vf;
        private boolean wn;

        public C0022dq(eyh eyhVar) {
            super(eyhVar);
            this.f697e = 1;
            this.kx = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            this.h = 1.0f;
            this.ji = com.bytedance.adsdk.ugeno.yoga.dq.AUTO.dq();
            this.bl = -1.0f;
            this.n = mp.RELATIVE.dq();
        }

        @Override // g.ewk
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public YogaLayout.dq dq() {
            YogaLayout.dq dqVar = new YogaLayout.dq((int) this.dq, (int) this.f16278d);
            dqVar.ig((int) (this.gh ? this.iw : this.s));
            dqVar.q((int) (this.r ? this.mn : this.s));
            dqVar.no((int) (this.i ? this.ia : this.s));
            dqVar.mp((int) (this.le ? this.kk : this.s));
            dqVar.dq(this.f697e);
            dqVar.s(this.ji);
            dqVar.d(this.kx);
            dqVar.ox(this.h);
            dqVar.f(this.ox);
            dqVar.fw(this.p);
            if (this.er) {
                dqVar.p(this.bl);
            }
            dqVar.iw(this.n);
            if (this.wn) {
                dqVar.mn(this.op);
            }
            if (this.j) {
                dqVar.kk(this.ir);
            }
            if (this.nh) {
                dqVar.ia(this.u);
            }
            if (this.vf) {
                dqVar.o(this.f696c);
            }
            if (this.ob && ox()) {
                float f2 = this.ce;
                if (f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    dqVar.jy(f2);
                }
            }
            return dqVar;
        }

        @Override // g.ewk
        public void dq(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            super.dq(context, str, str2);
            str.getClass();
            switch (str) {
                case "flexBasis":
                    this.er = true;
                    this.bl = byh.au(-1.0f, str2);
                    break;
                case "bottom":
                    this.j = true;
                    this.ir = (int) dxo.f(context, byh.o(str2, 0));
                    break;
                case "top":
                    this.wn = true;
                    this.op = (int) dxo.f(context, byh.o(str2, 0));
                    break;
                case "left":
                    this.nh = true;
                    this.u = (int) dxo.f(context, byh.o(str2, 0));
                    break;
                case "order":
                    this.f697e = byh.o(str2, 1);
                    break;
                case "ratio":
                    this.ob = true;
                    this.ce = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                    break;
                case "right":
                    this.vf = true;
                    this.f696c = (int) dxo.f(context, byh.o(str2, 0));
                    break;
                case "position":
                    this.n = mp.dq(str2).dq();
                    break;
                case "flexShrink":
                    this.h = byh.au(1.0f, str2);
                    break;
                case "flexGrow":
                    this.kx = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                    break;
                case "alignSelf":
                    this.ji = com.bytedance.adsdk.ugeno.yoga.dq.dq(str2).dq();
                    break;
            }
        }

        public boolean ox() {
            float f2 = this.dq;
            if (f2 == -1.0f && this.f16278d == -1.0f) {
                return false;
            }
            return f2 == -2.0f || this.f16278d == -2.0f;
        }

        @Override // g.ewk
        public String toString() {
            StringBuilder sb = new StringBuilder("LayoutParams{mOrder=");
            sb.append(this.f697e);
            sb.append(", mFlexGrow=");
            sb.append(this.kx);
            sb.append(", mFlexShrink=");
            sb.append(this.h);
            sb.append(", mAlignSelf=");
            sb.append(this.ji);
            sb.append(", mFlexBasis=");
            sb.append(this.bl);
            sb.append(", mPosition=");
            sb.append(this.n);
            sb.append(", mTop=");
            sb.append(this.op);
            sb.append(", mBottom=");
            sb.append(this.ir);
            sb.append(", mLeft=");
            sb.append(this.u);
            sb.append(", mRight=");
            return awf.s(sb, this.f696c, '}');
        }
    }

    public dq(Context context) {
        super(context);
        this.f693d = s.ROW;
        this.ox = q.NO_WRAP;
        this.p = iw.FLEX_START;
        com.bytedance.adsdk.ugeno.yoga.dq dqVar = com.bytedance.adsdk.ugeno.yoga.dq.STRETCH;
        this.nt = dqVar;
        this.tv = dqVar;
    }

    private void dq(final ImageView imageView) {
        this.ia.post(new Runnable() { // from class: com.bytedance.adsdk.ugeno.yoga.d.dq.2
            @Override // java.lang.Runnable
            public void run() {
                o dq;
                if (((dlv) dq.this).ia == null || (dq = ((YogaLayout) ((dlv) dq.this).ia).dq(imageView)) == null) {
                    return;
                }
                dq.p(((dlv) dq.this).ia.getWidth());
                dq.iw(((dlv) dq.this).ia.getHeight());
                ((dlv) dq.this).ia.requestLayout();
            }
        });
    }

    @Override // g.dlv
    public void dq(Drawable drawable) {
        ImageView.ScaleType scaleType;
        ImageView imageView = new ImageView(this.s);
        imageView.setImageDrawable(drawable);
        if (!this.t || (scaleType = this.vf) == ImageView.ScaleType.FIT_XY) {
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        } else {
            imageView.setScaleType(scaleType);
        }
        YogaLayout.dq dqVar = new YogaLayout.dq(-1, -1);
        dqVar.iw(mp.ABSOLUTE.dq());
        View view = this.ia;
        if (view instanceof YogaLayout) {
            ((YogaLayout) view).addView(imageView, 0, dqVar);
            dq(imageView);
        }
    }

    @Override // g.eyh
    public void dq(dlv dlvVar) {
        super.dq(dlvVar);
    }

    @Override // g.eyh
    public void dq(dlv dlvVar, ViewGroup.LayoutParams layoutParams) {
        if (dlvVar == null) {
            return;
        }
        ((eyh) this).dq.add(dlvVar);
        View kk = dlvVar.kk();
        if (kk != null) {
            ((YogaLayout) this.ia).addView(kk, layoutParams);
        }
    }

    @Override // g.dlv
    public void dq(String str, String str2) {
        super.dq(str, str2);
        str.getClass();
        switch (str) {
            case "alignItems":
                this.nt = com.bytedance.adsdk.ugeno.yoga.dq.dq(str2);
                break;
            case "flexDirection":
                this.f693d = s.dq(str2);
                break;
            case "alignContent":
                this.tv = com.bytedance.adsdk.ugeno.yoga.dq.dq(str2);
                break;
            case "flexWrap":
                this.ox = q.dq(str2);
                break;
            case "justifyContent":
                this.p = iw.dq(str2);
                break;
        }
    }

    @Override // g.dlv
    public void no() {
        float f2 = this.f14392c ? this.n : this.bl;
        float f3 = this.ce ? this.op : this.bl;
        float f4 = this.er ? this.ir : this.bl;
        float f5 = this.wn ? this.u : this.bl;
        this.ny.d(p.LEFT, f2);
        this.ny.d(p.RIGHT, f3);
        this.ny.d(p.TOP, f4);
        this.ny.d(p.BOTTOM, f5);
    }

    @Override // g.dlv
    public void p() {
        super.p();
        this.ny.dq(this.f693d);
        this.ny.dq(this.ox);
        this.ny.dq(this.p);
        this.ny.dq(this.nt);
        this.ny.ox(this.tv);
    }

    @Override // g.dlv
    /* renamed from: uh, reason: merged with bridge method [inline-methods] */
    public YogaLayout ox() {
        YogaLayout yogaLayout = new YogaLayout(this.s);
        yogaLayout.dq(this);
        this.ny = yogaLayout.getYogaNode();
        return yogaLayout;
    }

    @Override // g.dlv
    public void wp() {
        ImageView.ScaleType scaleType;
        if (this.l) {
            ((com.bytedance.sdk.openadsdk.core.ugeno.p) fzn.j().f17730e).dq(this.ig, this.nh, new ebz() { // from class: com.bytedance.adsdk.ugeno.yoga.d.dq.1
                @Override // g.ebz
                public void dq(Bitmap bitmap) {
                    final Bitmap c2;
                    if (bitmap == null || (c2 = dxo.c(((dlv) dq.this).s, bitmap, (int) ((dlv) dq.this).ob)) == null) {
                        return;
                    }
                    dxo.d(new Runnable() { // from class: com.bytedance.adsdk.ugeno.yoga.d.dq.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            dq.this.dq(new BitmapDrawable(c2));
                        }
                    });
                }
            });
            return;
        }
        ImageView imageView = new ImageView(this.s);
        ((com.bytedance.sdk.openadsdk.core.ugeno.p) fzn.j().f17730e).dq(this.ig, this.nh, imageView, this.ia.getWidth(), this.ia.getHeight());
        if (!this.t || (scaleType = this.vf) == ImageView.ScaleType.FIT_XY) {
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        } else {
            imageView.setScaleType(scaleType);
        }
        YogaLayout.dq dqVar = new YogaLayout.dq(-1, -1);
        dqVar.iw(mp.ABSOLUTE.dq());
        View view = this.ia;
        if (view instanceof YogaLayout) {
            ((YogaLayout) view).addView(imageView, 0, dqVar);
            dq(imageView);
        }
    }

    @Override // g.eyh
    /* renamed from: xz, reason: merged with bridge method [inline-methods] */
    public C0022dq dq() {
        return new C0022dq(this);
    }
}
