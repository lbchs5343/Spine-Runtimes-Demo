package g;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class fct extends byh {
    public boolean bn = true;
    public final ggm bo;
    public final TextView bq;

    public fct(TextView textView) {
        this.bq = textView;
        this.bo = new ggm(textView);
    }

    @Override // g.byh
    public final boolean bg() {
        return this.bn;
    }

    @Override // g.byh
    public final void bi(boolean z) {
        this.bn = z;
        TextView textView = this.bq;
        textView.setTransformationMethod(bl(textView.getTransformationMethod()));
        textView.setFilters(bj(textView.getFilters()));
    }

    @Override // g.byh
    public final InputFilter[] bj(InputFilter[] inputFilterArr) {
        if (!this.bn) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i = 0; i < inputFilterArr.length; i++) {
                InputFilter inputFilter = inputFilterArr[i];
                if (inputFilter instanceof ggm) {
                    sparseArray.put(i, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                if (sparseArray.indexOfKey(i3) < 0) {
                    inputFilterArr2[i2] = inputFilterArr[i3];
                    i2++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i4 = 0;
        while (true) {
            ggm ggmVar = this.bo;
            if (i4 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = ggmVar;
                return inputFilterArr3;
            }
            if (inputFilterArr[i4] == ggmVar) {
                return inputFilterArr;
            }
            i4++;
        }
    }

    @Override // g.byh
    public final TransformationMethod bl(TransformationMethod transformationMethod) {
        return this.bn ? ((transformationMethod instanceof clh) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new clh(transformationMethod) : transformationMethod instanceof clh ? ((clh) transformationMethod).f13061a : transformationMethod;
    }

    @Override // g.byh
    public final void bm(boolean z) {
        if (z) {
            TextView textView = this.bq;
            textView.setTransformationMethod(bl(textView.getTransformationMethod()));
        }
    }
}
