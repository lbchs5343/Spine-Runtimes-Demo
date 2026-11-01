package g;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public final class buy {

    /* renamed from: a, reason: collision with root package name */
    public aoy[] f12250a;

    /* renamed from: b, reason: collision with root package name */
    public int f12251b;

    /* renamed from: c, reason: collision with root package name */
    public aoy f12252c;

    /* renamed from: d, reason: collision with root package name */
    public int[][] f12253d;

    /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        fr frVar;
        int attributeCount;
        int i;
        int i2;
        int[][] iArr;
        int depth = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlResourceParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth && xmlResourceParser.getName().equals("item")) {
                Resources resources = context.getResources();
                int[] iArr2 = git.f18222g;
                TypedArray obtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr2) : theme.obtainStyledAttributes(attributeSet, iArr2, 0, 0);
                TypedValue peekValue = obtainAttributes.peekValue(0);
                if (peekValue != null) {
                    int i3 = peekValue.type;
                    if (i3 == 5) {
                        frVar = new fr(ghi.PIXELS, TypedValue.complexToDimensionPixelSize(peekValue.data, obtainAttributes.getResources().getDisplayMetrics()));
                    } else if (i3 == 6) {
                        frVar = new fr(ghi.PERCENT, peekValue.getFraction(1.0f, 1.0f));
                    }
                    obtainAttributes.recycle();
                    attributeCount = attributeSet.getAttributeCount();
                    int[] iArr3 = new int[attributeCount];
                    int i4 = 0;
                    for (i = 0; i < attributeCount; i++) {
                        int attributeNameResource = attributeSet.getAttributeNameResource(i);
                        if (attributeNameResource != R.attr.widthChange) {
                            int i5 = i4 + 1;
                            if (!attributeSet.getAttributeBooleanValue(i, false)) {
                                attributeNameResource = -attributeNameResource;
                            }
                            iArr3[i4] = attributeNameResource;
                            i4 = i5;
                        }
                    }
                    int[] trimStateSet = StateSet.trimStateSet(iArr3, i4);
                    aoy aoyVar = new aoy();
                    aoyVar.h = frVar;
                    i2 = this.f12251b;
                    if (i2 != 0 || trimStateSet.length == 0) {
                        this.f12252c = aoyVar;
                    }
                    iArr = this.f12253d;
                    if (i2 >= iArr.length) {
                        int i6 = i2 + 10;
                        int[][] iArr4 = new int[i6][];
                        System.arraycopy(iArr, 0, iArr4, 0, i2);
                        this.f12253d = iArr4;
                        aoy[] aoyVarArr = new aoy[i6];
                        System.arraycopy(this.f12250a, 0, aoyVarArr, 0, i2);
                        this.f12250a = aoyVarArr;
                    }
                    int[][] iArr5 = this.f12253d;
                    int i7 = this.f12251b;
                    iArr5[i7] = trimStateSet;
                    this.f12250a[i7] = aoyVar;
                    this.f12251b = i7 + 1;
                }
                frVar = null;
                obtainAttributes.recycle();
                attributeCount = attributeSet.getAttributeCount();
                int[] iArr32 = new int[attributeCount];
                int i42 = 0;
                while (i < attributeCount) {
                }
                int[] trimStateSet2 = StateSet.trimStateSet(iArr32, i42);
                aoy aoyVar2 = new aoy();
                aoyVar2.h = frVar;
                i2 = this.f12251b;
                if (i2 != 0) {
                }
                this.f12252c = aoyVar2;
                iArr = this.f12253d;
                if (i2 >= iArr.length) {
                }
                int[][] iArr52 = this.f12253d;
                int i72 = this.f12251b;
                iArr52[i72] = trimStateSet2;
                this.f12250a[i72] = aoyVar2;
                this.f12251b = i72 + 1;
            }
        }
    }
}
