package g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.lang.reflect.Array;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class po {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f19821a = new ThreadLocal();

    public static ColorStateList b(Resources resources, XmlResourceParser xmlResourceParser, Resources.Theme theme) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return c(resources, xmlResourceParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0137  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r1v23, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v5, types: [android.content.res.TypedArray] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ColorStateList c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth;
        int color;
        float f2;
        int attributeCount;
        int i;
        boolean z;
        int[] iArr;
        int i2;
        int ab2;
        int i3;
        float cbrt;
        int i4;
        TypedValue typedValue;
        ?? r0 = resources;
        AttributeSet attributeSet2 = attributeSet;
        Resources.Theme theme2 = theme;
        String name = xmlPullParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        ?? r4 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr2 = new int[20][];
        int[] iArr3 = new int[20];
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == r4 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                int[] iArr4 = glo.f18358c;
                ?? obtainAttributes = theme2 == null ? r0.obtainAttributes(attributeSet2, iArr4) : theme2.obtainStyledAttributes(attributeSet2, iArr4, i5, i5);
                int resourceId = obtainAttributes.getResourceId(i5, -1);
                if (resourceId != -1) {
                    ThreadLocal threadLocal = f19821a;
                    TypedValue typedValue2 = (TypedValue) threadLocal.get();
                    if (typedValue2 == null) {
                        typedValue = new TypedValue();
                        threadLocal.set(typedValue);
                    } else {
                        typedValue = typedValue2;
                    }
                    r0.getValue(resourceId, typedValue, r4);
                    int i7 = typedValue.type;
                    if (i7 < 28 || i7 > 31) {
                        try {
                            color = b(r0, r0.getXml(resourceId), theme2).getDefaultColor();
                        } catch (Exception unused) {
                            color = obtainAttributes.getColor(i5, -65281);
                        }
                        f2 = !obtainAttributes.hasValue(r4) ? obtainAttributes.getFloat(r4, 1.0f) : obtainAttributes.hasValue(3) ? obtainAttributes.getFloat(3, 1.0f) : 1.0f;
                        float f3 = (Build.VERSION.SDK_INT >= 31 || !obtainAttributes.hasValue(2)) ? obtainAttributes.getFloat(4, -1.0f) : obtainAttributes.getFloat(2, -1.0f);
                        obtainAttributes.recycle();
                        attributeCount = attributeSet2.getAttributeCount();
                        int[] iArr5 = new int[attributeCount];
                        int i8 = 0;
                        for (i = 0; i < attributeCount; i++) {
                            int attributeNameResource = attributeSet2.getAttributeNameResource(i);
                            if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                                int i9 = i8 + 1;
                                if (!attributeSet2.getAttributeBooleanValue(i, false)) {
                                    attributeNameResource = -attributeNameResource;
                                }
                                iArr5[i8] = attributeNameResource;
                                i8 = i9;
                            }
                        }
                        int[] trimStateSet = StateSet.trimStateSet(iArr5, i8);
                        z = f3 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f3 <= 100.0f;
                        if (f2 == 1.0f || z) {
                            int af = dzm.af((int) ((Color.alpha(color) * f2) + 0.5f), 0, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                            if (z) {
                                iArr = trimStateSet;
                                i2 = depth2;
                            } else {
                                dwf g2 = dwf.g(color);
                                float f4 = g2.f14925c;
                                float f5 = g2.f14927e;
                                ctz ctzVar = ctz.f13507a;
                                if (f5 < 1.0d || Math.round(f3) <= 0.0d || Math.round(f3) >= 100.0d) {
                                    iArr = trimStateSet;
                                    i2 = depth2;
                                    ab2 = ckd.ab(f3);
                                } else {
                                    float min = f4 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : Math.min(360.0f, f4);
                                    float f6 = f5;
                                    dwf dwfVar = null;
                                    boolean z2 = true;
                                    float f7 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                    while (true) {
                                        if (Math.abs(f7 - f5) >= 0.4f) {
                                            float f8 = 1000.0f;
                                            float f9 = 1000.0f;
                                            float f10 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                            float f11 = 100.0f;
                                            dwf dwfVar2 = null;
                                            while (true) {
                                                if (Math.abs(f10 - f11) <= 0.01f) {
                                                    iArr = trimStateSet;
                                                    i2 = depth2;
                                                    break;
                                                }
                                                float f12 = ((f11 - f10) / 2.0f) + f10;
                                                iArr = trimStateSet;
                                                int i10 = dwf.h(f12, f6, min).i(ctz.f13507a);
                                                float ax = ckd.ax(Color.red(i10));
                                                float ax2 = ckd.ax(Color.green(i10));
                                                float ax3 = ckd.ax(Color.blue(i10));
                                                float[] fArr = ckd.f13018e[1];
                                                float f13 = ((ax3 * fArr[2]) + ((ax2 * fArr[1]) + (ax * fArr[0]))) / 100.0f;
                                                if (f13 <= 0.008856452f) {
                                                    cbrt = f13 * 903.2963f;
                                                    i3 = i10;
                                                } else {
                                                    i3 = i10;
                                                    cbrt = (((float) Math.cbrt(f13)) * 116.0f) - 16.0f;
                                                }
                                                float abs = Math.abs(f3 - cbrt);
                                                if (abs < 0.2f) {
                                                    dwf g3 = dwf.g(i3);
                                                    dwf h = dwf.h(g3.f14928f, g3.f14927e, min);
                                                    float f14 = g3.f14923a - h.f14923a;
                                                    float f15 = g3.f14924b - h.f14924b;
                                                    float f16 = g3.f14926d - h.f14926d;
                                                    i2 = depth2;
                                                    float pow = (float) (Math.pow(Math.sqrt((f16 * f16) + (f15 * f15) + (f14 * f14)), 0.63d) * 1.41d);
                                                    if (pow <= 1.0f) {
                                                        f9 = pow;
                                                        f8 = abs;
                                                        dwfVar2 = g3;
                                                    }
                                                } else {
                                                    i2 = depth2;
                                                }
                                                if (f8 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f9 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                                    break;
                                                }
                                                if (cbrt < f3) {
                                                    f10 = f12;
                                                } else {
                                                    f11 = f12;
                                                }
                                                trimStateSet = iArr;
                                                depth2 = i2;
                                            }
                                            dwf dwfVar3 = dwfVar2;
                                            if (!z2) {
                                                if (dwfVar3 == null) {
                                                    f5 = f6;
                                                } else {
                                                    dwfVar = dwfVar3;
                                                    f7 = f6;
                                                }
                                                f6 = ((f5 - f7) / 2.0f) + f7;
                                                trimStateSet = iArr;
                                                depth2 = i2;
                                            } else {
                                                if (dwfVar3 != null) {
                                                    ab2 = dwfVar3.i(ctzVar);
                                                    break;
                                                }
                                                f6 = ((f5 - f7) / 2.0f) + f7;
                                                trimStateSet = iArr;
                                                depth2 = i2;
                                                z2 = false;
                                            }
                                        } else {
                                            iArr = trimStateSet;
                                            i2 = depth2;
                                            ab2 = dwfVar == null ? ckd.ab(f3) : dwfVar.i(ctzVar);
                                        }
                                    }
                                }
                                color = ab2;
                            }
                            color = (16777215 & color) | (af << 24);
                        } else {
                            iArr = trimStateSet;
                            i2 = depth2;
                        }
                        i4 = i6 + 1;
                        if (i4 > iArr3.length) {
                            int[] iArr6 = new int[i6 <= 4 ? 8 : i6 * 2];
                            System.arraycopy(iArr3, 0, iArr6, 0, i6);
                            iArr3 = iArr6;
                        }
                        iArr3[i6] = color;
                        if (i4 > iArr2.length) {
                            ?? r1 = (Object[]) Array.newInstance(iArr2.getClass().getComponentType(), i6 > 4 ? i6 * 2 : 8);
                            System.arraycopy(iArr2, 0, r1, 0, i6);
                            iArr2 = r1;
                        }
                        iArr2[i6] = iArr;
                        iArr2 = iArr2;
                        attributeSet2 = attributeSet;
                        theme2 = theme;
                        i6 = i4;
                        depth2 = i2;
                        r4 = 1;
                        i5 = 0;
                        r0 = resources;
                    }
                }
                color = obtainAttributes.getColor(i5, -65281);
                if (!obtainAttributes.hasValue(r4)) {
                }
                if (Build.VERSION.SDK_INT >= 31) {
                }
                obtainAttributes.recycle();
                attributeCount = attributeSet2.getAttributeCount();
                int[] iArr52 = new int[attributeCount];
                int i82 = 0;
                while (i < attributeCount) {
                }
                int[] trimStateSet2 = StateSet.trimStateSet(iArr52, i82);
                if (f3 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                }
                if (f2 == 1.0f) {
                }
                int af2 = dzm.af((int) ((Color.alpha(color) * f2) + 0.5f), 0, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                if (z) {
                }
                color = (16777215 & color) | (af2 << 24);
                i4 = i6 + 1;
                if (i4 > iArr3.length) {
                }
                iArr3[i6] = color;
                if (i4 > iArr2.length) {
                }
                iArr2[i6] = iArr;
                iArr2 = iArr2;
                attributeSet2 = attributeSet;
                theme2 = theme;
                i6 = i4;
                depth2 = i2;
                r4 = 1;
                i5 = 0;
                r0 = resources;
            } else {
                r0 = resources;
                attributeSet2 = attributeSet;
                theme2 = theme;
                depth2 = depth2;
                r4 = 1;
                i5 = 0;
            }
        }
        int[] iArr7 = new int[i6];
        int[][] iArr8 = new int[i6][];
        System.arraycopy(iArr3, 0, iArr7, 0, i6);
        System.arraycopy(iArr2, 0, iArr8, 0, i6);
        return new ColorStateList(iArr8, iArr7);
    }
}
