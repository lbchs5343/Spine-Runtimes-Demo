package g;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class hew extends dlv {

    /* renamed from: a, reason: collision with root package name */
    public String f19361a;

    /* renamed from: g, reason: collision with root package name */
    public int f19362g;
    public int w;
    public int y;

    @Override // g.dlv
    public final void dq(String str, String str2) {
        super.dq(str, str2);
        str.getClass();
        switch (str) {
            case "progressBgColor":
                this.y = bff.ab(str2, -16777216);
                break;
            case "textColor":
                this.f19362g = bff.ab(str2, -16777216);
                break;
            case "textSize":
                dxo.g(this.s, str2);
                break;
            case "progress":
                byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case "text":
                this.f19361a = str2;
                break;
            case "progressColor":
                this.w = bff.ab(str2, -16777216);
                break;
        }
    }

    @Override // g.dlv
    public final View ox() {
        Context context = this.s;
        avt avtVar = new avt(context);
        avtVar.f10945e = new View(context);
        avtVar.f10941a = new View(context);
        avtVar.addView(avtVar.f10945e);
        avtVar.addView(avtVar.f10941a);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) avtVar.f10945e.getLayoutParams();
        layoutParams.width = 0;
        layoutParams.height = -1;
        layoutParams.gravity = 3;
        avtVar.f10945e.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) avtVar.f10941a.getLayoutParams();
        layoutParams2.width = avtVar.f10943c;
        layoutParams2.gravity = 5;
        avtVar.f10941a.setLayoutParams(layoutParams2);
        TextView textView = new TextView(context);
        avtVar.f10942b = textView;
        textView.setTextColor(-1);
        avtVar.f10942b.setTextSize(16.0f);
        avtVar.f10942b.setGravity(17);
        avtVar.addView(avtVar.f10942b);
        avtVar.f10944d = this;
        return avtVar;
    }

    @Override // g.dlv
    public final void p() {
        super.p();
        ((avt) this.ia).setBackgroundColor(this.y);
        ((avt) this.ia).setText(this.f19361a);
        ((avt) this.ia).setProgressBgColor(this.y);
        ((avt) this.ia).setProgressColor(this.w);
        ((avt) this.ia).setTextColor(this.f19362g);
    }
}
