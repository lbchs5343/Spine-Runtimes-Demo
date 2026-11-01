package com.bytedance.sdk.openadsdk.core.ugeno;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ImageDecoder;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.widget.GifView;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.iw.o;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.ir.fw;
import com.bytedance.sdk.openadsdk.core.wp;
import g.agk;
import g.ayp;
import g.dmm;
import g.ebz;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class p implements ayp {

    public interface dq {
        void dq(Drawable drawable);
    }

    private void dq(dmm dmmVar, o oVar, String str) {
        HashMap hashMap;
        if (dmmVar == null || (hashMap = dmmVar.f14435c) == null) {
            return;
        }
        Object obj = hashMap.get("image_info");
        if (obj instanceof Map) {
            oVar.d((String) ((Map) obj).get(str));
        }
        String str2 = (String) hashMap.get("cache_dir");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        oVar.ox(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(byte[] bArr, final ImageView imageView) {
        try {
            ig.p("ImageLoaderProvider", "load animation image");
            dq(bArr, new dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.4
                @Override // com.bytedance.sdk.openadsdk.core.ugeno.p.dq
                public void dq(final Drawable drawable) {
                    com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Build.VERSION.SDK_INT >= 28 && agk.h(drawable)) {
                                agk.c(drawable).start();
                            }
                            imageView.setImageDrawable(drawable);
                        }
                    });
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void dq(final byte[] bArr, final dq dqVar) {
        com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("csj_animation_drawable") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.5
            @Override // java.lang.Runnable
            public void run() {
                Drawable ox = p.this.ox(bArr);
                dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    dqVar2.dq(ox);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable ox(byte[] bArr) {
        FileOutputStream fileOutputStream;
        ImageDecoder.Source createSource;
        Drawable decodeDrawable;
        try {
            boolean ox = com.bytedance.sdk.openadsdk.core.multipro.d.ox();
            File d2 = com.bytedance.sdk.component.utils.iw.d(wp.getContext(), ox, ox ? "UGEN_GIF_AD_CACHE/" : "/UGEN_GIF_CACHE/", "TT_UGEN_GIF_FILE");
            fileOutputStream = new FileOutputStream(d2);
            try {
                fileOutputStream.write(bArr, 0, bArr.length);
                if (Build.VERSION.SDK_INT < 28) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(wp.getContext().getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
                    try {
                        fileOutputStream.close();
                    } catch (Throwable unused) {
                    }
                    return bitmapDrawable;
                }
                createSource = ImageDecoder.createSource(d2);
                decodeDrawable = ImageDecoder.decodeDrawable(createSource);
                try {
                    fileOutputStream.close();
                } catch (Throwable unused2) {
                }
                return decodeDrawable;
            } catch (Throwable th) {
                th = th;
                try {
                    ig.d("ImageLoaderProvider", "GifView  getSourceByFile fail : ", th);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    return null;
                } catch (Throwable th2) {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused4) {
                        }
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    public void d(dmm dmmVar, String str, final ebz ebzVar) {
        o ox = com.bytedance.sdk.openadsdk.ia.d.dq(str).ox(1);
        dq(dmmVar, ox, str);
        ox.dq(new f() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.3
            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(2)
            public void dq(int i, String str2, Throwable th) {
                ebz ebzVar2 = ebzVar;
                if (ebzVar2 != null) {
                    ebzVar2.dq(null);
                }
            }

            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(1)
            public void dq(no noVar) {
                if (noVar == null) {
                    ebzVar.dq(null);
                    return;
                }
                ebz ebzVar2 = ebzVar;
                if (ebzVar2 == null) {
                    ebzVar2.dq(null);
                    return;
                }
                if (noVar.ox() instanceof Bitmap) {
                    ebzVar.dq((Bitmap) noVar.ox());
                } else if (noVar.ox() instanceof byte[]) {
                    try {
                        ebzVar.dq(BitmapFactory.decodeByteArray((byte[]) noVar.ox(), 0, ((byte[]) noVar.ox()).length));
                    } catch (Throwable unused) {
                    }
                }
            }
        });
    }

    public boolean d(byte[] bArr) {
        return TextUtils.equals("png", com.bytedance.sdk.component.utils.kk.dq(Arrays.copyOfRange(bArr, 0, com.bytedance.sdk.component.utils.kk.dq()))) && com.bytedance.sdk.component.adexpress.p.s.dq(bArr);
    }

    @Override // g.ayp
    public void dq(dmm dmmVar, String str, ImageView imageView) {
        if (!(imageView instanceof GifView)) {
            o dq2 = com.bytedance.sdk.openadsdk.ia.d.dq(str);
            dq(dmmVar, dq2, str);
            dq2.dq(imageView);
        } else {
            final GifView gifView = (GifView) imageView;
            gifView.setAdjustViewBounds(true);
            gifView.setBackgroundColor(0);
            com.bytedance.sdk.openadsdk.ia.d.dq(str).ox(3).dq(Bitmap.Config.RGB_565).dq(new f() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.1
                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(2)
                public void dq(int i, String str2, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(1)
                public void dq(no noVar) {
                    try {
                        Object ox = noVar.ox();
                        if (!(ox instanceof byte[])) {
                            if (ox instanceof Bitmap) {
                                gifView.setImageBitmap((Bitmap) ox);
                            }
                        } else if (!noVar.ia()) {
                            gifView.setImageDrawable(fw.dq((byte[]) ox, 0));
                        } else {
                            gifView.dq((byte[]) ox, false);
                            gifView.setRepeatConfig(true);
                            gifView.d();
                        }
                    } catch (Throwable th) {
                        dq(1002, "", th);
                    }
                }
            });
        }
    }

    @Override // g.ayp
    public void dq(dmm dmmVar, String str, final ImageView imageView, final int i, final int i2) {
        o ox = com.bytedance.sdk.openadsdk.ia.d.dq(str).ox(3);
        dq(dmmVar, ox, str);
        ox.dq(new f() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.2
            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(2)
            public void dq(int i3, String str2, Throwable th) {
            }

            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(1)
            public void dq(no noVar) {
                Object ox2 = noVar.ox();
                if (!(ox2 instanceof byte[])) {
                    if (ox2 instanceof Bitmap) {
                        imageView.setImageBitmap((Bitmap) ox2);
                        return;
                    }
                    return;
                }
                if (!noVar.ia()) {
                    byte[] bArr = (byte[]) ox2;
                    if (!p.this.d(bArr)) {
                        if (p.this.dq(bArr)) {
                            com.bytedance.sdk.component.adexpress.p.s.dq(imageView, bArr, i, i2);
                            return;
                        }
                        Bitmap dq2 = new com.bytedance.sdk.component.iw.ox.d.dq(i, i2, imageView.getScaleType(), Bitmap.Config.RGB_565, i, i2).dq(bArr);
                        if (dq2 != null) {
                            imageView.setImageBitmap(dq2);
                            return;
                        }
                        return;
                    }
                }
                if (Build.VERSION.SDK_INT <= 30) {
                    p.this.dq((byte[]) ox2, imageView);
                } else {
                    com.bytedance.sdk.component.adexpress.p.s.dq(imageView, (byte[]) ox2, i, i2);
                }
            }
        });
    }

    @Override // g.ayp
    public void dq(dmm dmmVar, String str, ebz ebzVar) {
        d(dmmVar, str, ebzVar);
    }

    public boolean dq(byte[] bArr) {
        return com.bytedance.sdk.component.adexpress.p.s.dq(bArr, 0);
    }
}
