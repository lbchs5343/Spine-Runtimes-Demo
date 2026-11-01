package g;

import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes.dex */
public final class eyl extends gkv {
    public final /* synthetic */ AppCompatTextView w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eyl(AppCompatTextView appCompatTextView) {
        super(appCompatTextView);
        this.w = appCompatTextView;
    }

    @Override // g.fc, g.ffn
    public final void r(int i, float f2) {
        super/*android.widget.TextView*/.setLineHeight(i, f2);
    }
}
