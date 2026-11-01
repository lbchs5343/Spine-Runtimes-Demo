package g;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class csd extends byh {
    public final fct bn;

    public csd(TextView textView) {
        this.bn = new fct(textView);
    }

    @Override // g.byh
    public final boolean bg() {
        return this.bn.bn;
    }

    @Override // g.byh
    public final void bi(boolean z) {
        this.bn.bn = z;
    }

    @Override // g.byh
    public final InputFilter[] bj(InputFilter[] inputFilterArr) {
        return inputFilterArr;
    }

    @Override // g.byh
    public final TransformationMethod bl(TransformationMethod transformationMethod) {
        return transformationMethod;
    }

    @Override // g.byh
    public final void bm(boolean z) {
    }
}
