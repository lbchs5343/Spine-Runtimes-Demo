package g;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import cn.trinea.android.developertools.R;
import j$.util.Objects;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public final class dsx {

    /* renamed from: a, reason: collision with root package name */
    public final bt f14742a;

    /* renamed from: b, reason: collision with root package name */
    public final cjg[] f14743b;

    /* renamed from: c, reason: collision with root package name */
    public final bt f14744c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14745d;

    /* renamed from: e, reason: collision with root package name */
    public final bt f14746e;

    /* renamed from: f, reason: collision with root package name */
    public final cjg f14747f;

    /* renamed from: g, reason: collision with root package name */
    public final int[][] f14748g;
    public final bt h;

    public dsx(ke keVar) {
        this.f14745d = keVar.f19538g;
        this.f14747f = (cjg) keVar.f19533b;
        this.f14748g = (int[][]) keVar.f19534c;
        this.f14743b = (cjg[]) keVar.f19536e;
        this.f14744c = (bt) keVar.h;
        this.f14746e = (bt) keVar.i;
        this.h = (bt) keVar.f19532a;
        this.f14742a = (bt) keVar.f19537f;
    }

    public static void i(ke keVar, Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
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
                int[] iArr = git.r;
                TypedArray obtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                cjg n = cjg.m(context, obtainAttributes.getResourceId(0, 0), obtainAttributes.getResourceId(1, 0), new ett(0)).n();
                obtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i = 0;
                for (int i2 = 0; i2 < attributeCount; i2++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                    if (attributeNameResource != R.attr.shapeAppearance && attributeNameResource != R.attr.shapeAppearanceOverlay) {
                        int i3 = i + 1;
                        if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i] = attributeNameResource;
                        i = i3;
                    }
                }
                keVar.l(StateSet.trimStateSet(iArr2, i), n);
            }
        }
    }

    public static dsx j(Context context, TypedArray typedArray, int i) {
        XmlResourceParser xml;
        AttributeSet asAttributeSet;
        int next;
        int resourceId = typedArray.getResourceId(i, 0);
        if (resourceId == 0 || !Objects.equals(context.getResources().getResourceTypeName(resourceId), "xml")) {
            return null;
        }
        ke keVar = new ke(2);
        keVar.k();
        try {
            xml = context.getResources().getXml(resourceId);
            try {
                asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
            } catch (Throwable th) {
                if (xml != null) {
                    try {
                        xml.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
            keVar.k();
        }
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (xml.getName().equals("selector")) {
            i(keVar, context, xml, asAttributeSet, context.getTheme());
        }
        xml.close();
        if (keVar.f19538g == 0) {
            return null;
        }
        return new dsx(keVar);
    }

    public final boolean k() {
        bt btVar;
        bt btVar2;
        bt btVar3;
        bt btVar4;
        return this.f14745d > 1 || ((btVar = this.f14744c) != null && btVar.f12163b > 1) || (((btVar2 = this.f14746e) != null && btVar2.f12163b > 1) || (((btVar3 = this.h) != null && btVar3.f12163b > 1) || ((btVar4 = this.f14742a) != null && btVar4.f12163b > 1)));
    }

    public final cjg l() {
        cjg cjgVar = this.f14747f;
        bt btVar = this.f14742a;
        bt btVar2 = this.h;
        bt btVar3 = this.f14746e;
        bt btVar4 = this.f14744c;
        if (btVar4 == null && btVar3 == null && btVar2 == null && btVar == null) {
            return cjgVar;
        }
        bem r = cjgVar.r();
        if (btVar4 != null) {
            r.f11390e = btVar4.f12164c;
        }
        if (btVar3 != null) {
            r.f11392g = btVar3.f12164c;
        }
        if (btVar2 != null) {
            r.f11386a = btVar2.f12164c;
        }
        if (btVar != null) {
            r.l = btVar.f12164c;
        }
        return r.n();
    }
}
