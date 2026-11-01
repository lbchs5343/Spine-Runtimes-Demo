package g;

import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes.dex */
public class gkv extends fc {
    public final /* synthetic */ AppCompatTextView x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gkv(AppCompatTextView appCompatTextView) {
        super(4, appCompatTextView);
        this.x = appCompatTextView;
    }

    @Override // g.fc, g.ffn
    public final void j(int i) {
        super/*android.widget.TextView*/.setLastBaselineToBottomHeight(i);
    }

    @Override // g.fc, g.ffn
    public final void n(int i) {
        super/*android.widget.TextView*/.setFirstBaselineToTopHeight(i);
    }
}
