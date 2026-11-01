package g;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class bt {

    /* renamed from: b, reason: collision with root package name */
    public int f12163b;

    /* renamed from: c, reason: collision with root package name */
    public gjn f12164c;

    /* renamed from: d, reason: collision with root package name */
    public int[][] f12165d = new int[10][];

    /* renamed from: a, reason: collision with root package name */
    public gjn[] f12162a = new gjn[10];

    public static bt e(gjn gjnVar) {
        bt btVar = new bt();
        btVar.g(StateSet.WILD_CARD, gjnVar);
        return btVar;
    }

    public final void f(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
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
                int[] iArr = git.o;
                TypedArray obtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                gjn o = cjg.o(obtainAttributes, 5, new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
                obtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i = 0;
                for (int i2 = 0; i2 < attributeCount; i2++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                    if (attributeNameResource != R.attr.cornerSize) {
                        int i3 = i + 1;
                        if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i] = attributeNameResource;
                        i = i3;
                    }
                }
                g(StateSet.trimStateSet(iArr2, i), o);
            }
        }
    }

    public final void g(int[] iArr, gjn gjnVar) {
        int i = this.f12163b;
        if (i == 0 || iArr.length == 0) {
            this.f12164c = gjnVar;
        }
        int[][] iArr2 = this.f12165d;
        if (i >= iArr2.length) {
            int i2 = i + 10;
            int[][] iArr3 = new int[i2][];
            System.arraycopy(iArr2, 0, iArr3, 0, i);
            this.f12165d = iArr3;
            gjn[] gjnVarArr = new gjn[i2];
            System.arraycopy(this.f12162a, 0, gjnVarArr, 0, i);
            this.f12162a = gjnVarArr;
        }
        int[][] iArr4 = this.f12165d;
        int i3 = this.f12163b;
        iArr4[i3] = iArr;
        this.f12162a[i3] = gjnVar;
        this.f12163b = i3 + 1;
    }

    public final gjn h(int[] iArr) {
        int i;
        int[][] iArr2 = this.f12165d;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = -1;
            if (i3 >= this.f12163b) {
                i3 = -1;
                break;
            }
            if (StateSet.stateSetMatches(iArr2[i3], iArr)) {
                break;
            }
            i3++;
        }
        if (i3 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            int[][] iArr4 = this.f12165d;
            while (true) {
                if (i2 >= this.f12163b) {
                    break;
                }
                if (StateSet.stateSetMatches(iArr4[i2], iArr3)) {
                    i = i2;
                    break;
                }
                i2++;
            }
            i3 = i;
        }
        return i3 < 0 ? this.f12164c : this.f12162a[i3];
    }
}
