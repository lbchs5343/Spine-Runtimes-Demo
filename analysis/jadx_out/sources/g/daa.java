package g;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final /* synthetic */ class daa implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f13833a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f13834b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13835c = 1;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ cyz f13836d;

    public /* synthetic */ daa(cyz cyzVar, View view, TextView textView) {
        this.f13836d = cyzVar;
        this.f13833a = view;
        this.f13834b = textView;
    }

    public /* synthetic */ daa(cyz cyzVar, TextView textView, View view) {
        this.f13836d = cyzVar;
        this.f13834b = textView;
        this.f13833a = view;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0038, code lost:
    
        if (r1.getLayout().getEllipsisCount(java.lang.Math.max(0, r1.getLayout().getLineCount() - 1)) <= 0) goto L13;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        int i;
        switch (this.f13835c) {
            case 0:
                cyz cyzVar = this.f13836d;
                int i2 = cyzVar.x ? he.UNDEFINED_ITEM_ID : 3;
                TextView textView = this.f13834b;
                textView.setMaxLines(i2);
                textView.setEllipsize(cyzVar.x ? null : TextUtils.TruncateAt.END);
                String string = cyzVar.getString(cyzVar.x ? R.string.about_description_less : R.string.about_description_more);
                View view = this.f13833a;
                view.setContentDescription(string);
                view.setRotation(cyzVar.x ? 180.0f : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                break;
            default:
                cyz cyzVar2 = this.f13836d;
                cyzVar2.getClass();
                TextView textView2 = this.f13834b;
                if (textView2.getLayout() != null) {
                    i = 0;
                    if (!cyzVar2.x) {
                        if (textView2.getLayout().getLineCount() <= 3) {
                            break;
                        }
                    }
                    this.f13833a.setVisibility(i);
                    break;
                }
                i = 8;
                this.f13833a.setVisibility(i);
        }
    }
}
