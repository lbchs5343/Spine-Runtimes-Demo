package g;

import android.app.AlertDialog;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.display.VirtualDisplay;
import android.media.Image;
import android.media.ImageReader;
import android.media.projection.MediaProjection;
import android.os.IBinder;
import android.util.Pair;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class fdp extends ghz implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public static VirtualDisplay f16616a;

    /* renamed from: b, reason: collision with root package name */
    public gft f16617b;

    /* renamed from: c, reason: collision with root package name */
    public bpl f16618c;

    /* renamed from: e, reason: collision with root package name */
    public WindowManager.LayoutParams f16620e;

    /* renamed from: f, reason: collision with root package name */
    public float f16621f;

    /* renamed from: g, reason: collision with root package name */
    public MediaProjection f16622g;
    public Rect h;
    public heo i;
    public int j;
    public int k;
    public gek l;
    public PointF m;
    public n o;
    public PointF p;
    public fdp q;
    public WindowManager.LayoutParams r;
    public WindowManager s;
    public int t;
    public ImageReader v;
    public float w;
    public ContextThemeWrapper x;
    public volatile boolean n = false;

    /* renamed from: d, reason: collision with root package name */
    public float f16619d = 4.712389f;
    public final Object u = new Object();

    public static Pair y(Image image, Rect rect) {
        int width = image.getWidth() - 1;
        int height = image.getHeight() - 1;
        int width2 = rect.width();
        int height2 = rect.height();
        ArrayList arrayList = new ArrayList();
        Bitmap createBitmap = Bitmap.createBitmap(width2, height2, Bitmap.Config.ARGB_8888);
        Image.Plane[] planes = image.getPlanes();
        ByteBuffer buffer = planes[0].getBuffer();
        int rowStride = planes[0].getRowStride();
        int pixelStride = planes[0].getPixelStride();
        for (int i = 0; i < height2; i++) {
            for (int i2 = 0; i2 < width2; i2++) {
                int i3 = rect.left + i2;
                int i4 = rect.top + i;
                if (i3 < 0 || i3 > width || i4 < 0 || i4 > height) {
                    createBitmap.setPixel(i2, i, 0);
                } else {
                    buffer.position((i4 * rowStride) + (i3 * pixelStride));
                    int argb = Color.argb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, buffer.get() & 255, buffer.get() & 255, buffer.get() & 255);
                    arrayList.add(Integer.valueOf(argb));
                    createBitmap.setPixel(i2, i, argb);
                }
            }
        }
        int i5 = -1;
        if (!acw.u(arrayList)) {
            int[] iArr = {Color.argb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 68, 68, 68), Color.argb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 170, 170, 170), Color.argb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)};
            int[] iArr2 = new int[3];
            iArr2[0] = 0;
            iArr2[1] = 0;
            iArr2[2] = 0;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                int intValue = ((Integer) it.next()).intValue();
                int i6 = 0;
                while (true) {
                    if (i6 >= 3) {
                        break;
                    }
                    if (intValue <= iArr[i6]) {
                        iArr2[i6] = iArr2[i6] + 1;
                        break;
                    }
                    i6++;
                }
            }
            int i7 = 0;
            int i8 = iArr2[0];
            for (int i9 = 0; i9 < 3; i9++) {
                if ((i9 <= 1 && iArr2[i9] < i8) || (i9 > 1 && iArr2[i9] <= i8)) {
                    i8 = iArr2[i9];
                    i7 = i9;
                }
            }
            if (i7 == 0) {
                i5 = -16777216;
            } else if (i7 == 1) {
                i5 = -5592406;
            }
        }
        return new Pair(createBitmap, Integer.valueOf(i5));
    }

    public static void z(fdp fdpVar, int i, int i2, float f2) {
        Rect rect = fdpVar.h;
        int i3 = fdpVar.k / 2;
        rect.left = i - i3;
        int i4 = fdpVar.j / 2;
        rect.top = i2 - i4;
        rect.right = i3 + i + 1;
        rect.bottom = i4 + i2 + 1;
        fdpVar.r.x = i - (fdpVar.f16617b.getWidth() / 2);
        fdpVar.r.y = i2 - (fdpVar.f16617b.getHeight() / 2);
        fdpVar.s.updateViewLayout(fdpVar.f16617b, fdpVar.r);
        double d2 = f2;
        fdpVar.f16620e.x = (((int) (Math.cos(d2) * fdpVar.f16621f)) + i) - (fdpVar.o.getWidth() / 2);
        fdpVar.f16620e.y = (((int) (Math.sin(d2) * fdpVar.f16621f)) + i2) - (fdpVar.o.getHeight() / 2);
        fdpVar.s.updateViewLayout(fdpVar.o, fdpVar.f16620e);
    }

    public final void aa() {
        VirtualDisplay virtualDisplay = f16616a;
        if (virtualDisplay != null) {
            virtualDisplay.release();
            f16616a = null;
        }
        MediaProjection mediaProjection = this.f16622g;
        if (mediaProjection != null) {
            bpl bplVar = this.f16618c;
            if (bplVar != null) {
                mediaProjection.unregisterCallback(bplVar);
            }
            this.f16622g.stop();
            this.f16622g = null;
        }
        ImageReader imageReader = this.v;
        if (imageReader != null) {
            imageReader.close();
            this.v = null;
        }
    }

    public final void ab() {
        if (this.s != null && this.n) {
            gft gftVar = this.f16617b;
            if (gftVar != null) {
                this.s.removeView(gftVar);
            }
            n nVar = this.o;
            if (nVar != null) {
                this.s.removeView(nVar);
            }
        }
        synchronized (fdp.class) {
            this.n = false;
        }
    }

    public final ContextThemeWrapper ac() {
        Configuration configuration = new Configuration(getResources().getConfiguration());
        configuration.uiMode = (configuration.uiMode & (-49)) | (((Resources.getSystem().getConfiguration().uiMode & 48) == 32 ? (char) 2 : (char) 1) != 2 ? 16 : 32);
        return new ContextThemeWrapper(createConfigurationContext(configuration), R.style.ColorPickerOverlayTheme);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int id = view.getId();
        if (id != R.id.info) {
            if (id == R.id.close) {
                stopSelf();
                return;
            }
            return;
        }
        final gek gekVar = this.l;
        if (gekVar == null) {
            return;
        }
        if (this.x == null) {
            this.x = ac();
        }
        View inflate = LayoutInflater.from(this.x).inflate(R.layout.color_picker_info, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.title)).setText(R.string.dab_detail_info);
        TextView textView = (TextView) inflate.findViewById(R.id.color);
        String str = gekVar.f17991e;
        float f2 = gekVar.f17988b;
        float f3 = gekVar.i;
        float f4 = gekVar.f17990d;
        float f5 = gekVar.f17989c;
        float f6 = gekVar.j;
        float f7 = gekVar.h;
        final int i = 1;
        final int i2 = 0;
        textView.setText(getString(R.string.dab_detail_color, str));
        int i3 = (int) f7;
        int i4 = (int) f6;
        int i5 = (int) f5;
        int i6 = (int) f4;
        inflate.findViewById(R.id.color_swatch).setBackgroundTintList(ColorStateList.valueOf(Color.argb(i3, i4, i5, i6)));
        ((TextView) inflate.findViewById(R.id.f21212a)).setText(getString(R.string.dab_alpha_value, Integer.valueOf(i3)));
        ((TextView) inflate.findViewById(R.id.r)).setText(getString(R.string.dab_red_value, Integer.valueOf(i4)));
        ((TextView) inflate.findViewById(R.id.f21217g)).setText(getString(R.string.dab_green_value, Integer.valueOf(i5)));
        ((TextView) inflate.findViewById(R.id.f21214b)).setText(getString(R.string.dab_blue_value, Integer.valueOf(i6)));
        ((TextView) inflate.findViewById(R.id.f21215c)).setText(getString(R.string.dab_cyan_value, gekVar.o()));
        ((TextView) inflate.findViewById(R.id.m)).setText(getString(R.string.dab_magenta_value, gekVar.p()));
        ((TextView) inflate.findViewById(R.id.y)).setText(getString(R.string.dab_yellow_value, gekVar.l()));
        ((TextView) inflate.findViewById(R.id.k)).setText(getString(R.string.dab_black_value, gekVar.n()));
        final int i7 = 2;
        ((TextView) inflate.findViewById(R.id.cx)).setText(getString(R.string.dab_x_value, Integer.valueOf((int) f3), fso.aa(this.q, f3)));
        ((TextView) inflate.findViewById(R.id.cy)).setText(getString(R.string.dab_y_value, Integer.valueOf((int) f2), fso.aa(this.q, f2)));
        AlertDialog create = new AlertDialog.Builder(this.x).setView(inflate).create();
        create.getWindow().setType(fso.ah());
        if (create.getWindow() != null) {
            create.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        }
        inflate.findViewById(R.id.copy).setOnClickListener(new gwc(this, gekVar, create, i2));
        inflate.findViewById(R.id.share).setOnClickListener(new gwc(this, gekVar, create, i));
        View.OnLongClickListener onLongClickListener = new View.OnLongClickListener() { // from class: g.cuw
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                fdp fdpVar = fdp.this;
                gm.d(fdpVar.q, fdpVar.getString(R.string.click_to_copy), 0);
                return true;
            }
        };
        View findViewById = inflate.findViewById(R.id.copy_color);
        final int i8 = 3;
        findViewById.setOnClickListener(new View.OnClickListener(this) { // from class: g.fzp

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ fdp f17735c;

            {
                this.f17735c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i8) {
                    case 0:
                        fdp fdpVar = this.f17735c.q;
                        StringBuilder sb = new StringBuilder();
                        gek gekVar2 = gekVar;
                        sb.append((int) gekVar2.h);
                        sb.append(",");
                        sb.append((int) gekVar2.j);
                        sb.append(",");
                        sb.append((int) gekVar2.f17989c);
                        sb.append(",");
                        sb.append((int) gekVar2.f17990d);
                        fso.ae(fdpVar, "argb", sb.toString(), true);
                        break;
                    case 1:
                        fdp fdpVar2 = this.f17735c.q;
                        StringBuilder sb2 = new StringBuilder();
                        gek gekVar3 = gekVar;
                        sb2.append(gekVar3.o());
                        sb2.append(",");
                        sb2.append(gekVar3.p());
                        sb2.append(",");
                        sb2.append(gekVar3.l());
                        sb2.append(",");
                        sb2.append(gekVar3.n());
                        fso.ae(fdpVar2, "cmyk", sb2.toString(), true);
                        break;
                    case 2:
                        fdp fdpVar3 = this.f17735c.q;
                        StringBuilder sb3 = new StringBuilder();
                        gek gekVar4 = gekVar;
                        sb3.append((int) gekVar4.i);
                        sb3.append(",");
                        sb3.append((int) gekVar4.f17988b);
                        fso.ae(fdpVar3, "coordinate", sb3.toString(), true);
                        break;
                    default:
                        fso.ae(this.f17735c.q, "color", gekVar.f17991e, true);
                        break;
                }
            }
        });
        findViewById.setOnLongClickListener(onLongClickListener);
        View findViewById2 = inflate.findViewById(R.id.copy_argb);
        findViewById2.setOnClickListener(new View.OnClickListener(this) { // from class: g.fzp

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ fdp f17735c;

            {
                this.f17735c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i2) {
                    case 0:
                        fdp fdpVar = this.f17735c.q;
                        StringBuilder sb = new StringBuilder();
                        gek gekVar2 = gekVar;
                        sb.append((int) gekVar2.h);
                        sb.append(",");
                        sb.append((int) gekVar2.j);
                        sb.append(",");
                        sb.append((int) gekVar2.f17989c);
                        sb.append(",");
                        sb.append((int) gekVar2.f17990d);
                        fso.ae(fdpVar, "argb", sb.toString(), true);
                        break;
                    case 1:
                        fdp fdpVar2 = this.f17735c.q;
                        StringBuilder sb2 = new StringBuilder();
                        gek gekVar3 = gekVar;
                        sb2.append(gekVar3.o());
                        sb2.append(",");
                        sb2.append(gekVar3.p());
                        sb2.append(",");
                        sb2.append(gekVar3.l());
                        sb2.append(",");
                        sb2.append(gekVar3.n());
                        fso.ae(fdpVar2, "cmyk", sb2.toString(), true);
                        break;
                    case 2:
                        fdp fdpVar3 = this.f17735c.q;
                        StringBuilder sb3 = new StringBuilder();
                        gek gekVar4 = gekVar;
                        sb3.append((int) gekVar4.i);
                        sb3.append(",");
                        sb3.append((int) gekVar4.f17988b);
                        fso.ae(fdpVar3, "coordinate", sb3.toString(), true);
                        break;
                    default:
                        fso.ae(this.f17735c.q, "color", gekVar.f17991e, true);
                        break;
                }
            }
        });
        findViewById2.setOnLongClickListener(onLongClickListener);
        View findViewById3 = inflate.findViewById(R.id.copy_cmyk);
        findViewById3.setOnClickListener(new View.OnClickListener(this) { // from class: g.fzp

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ fdp f17735c;

            {
                this.f17735c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i) {
                    case 0:
                        fdp fdpVar = this.f17735c.q;
                        StringBuilder sb = new StringBuilder();
                        gek gekVar2 = gekVar;
                        sb.append((int) gekVar2.h);
                        sb.append(",");
                        sb.append((int) gekVar2.j);
                        sb.append(",");
                        sb.append((int) gekVar2.f17989c);
                        sb.append(",");
                        sb.append((int) gekVar2.f17990d);
                        fso.ae(fdpVar, "argb", sb.toString(), true);
                        break;
                    case 1:
                        fdp fdpVar2 = this.f17735c.q;
                        StringBuilder sb2 = new StringBuilder();
                        gek gekVar3 = gekVar;
                        sb2.append(gekVar3.o());
                        sb2.append(",");
                        sb2.append(gekVar3.p());
                        sb2.append(",");
                        sb2.append(gekVar3.l());
                        sb2.append(",");
                        sb2.append(gekVar3.n());
                        fso.ae(fdpVar2, "cmyk", sb2.toString(), true);
                        break;
                    case 2:
                        fdp fdpVar3 = this.f17735c.q;
                        StringBuilder sb3 = new StringBuilder();
                        gek gekVar4 = gekVar;
                        sb3.append((int) gekVar4.i);
                        sb3.append(",");
                        sb3.append((int) gekVar4.f17988b);
                        fso.ae(fdpVar3, "coordinate", sb3.toString(), true);
                        break;
                    default:
                        fso.ae(this.f17735c.q, "color", gekVar.f17991e, true);
                        break;
                }
            }
        });
        findViewById3.setOnLongClickListener(onLongClickListener);
        View findViewById4 = inflate.findViewById(R.id.copy_coordinate);
        findViewById4.setOnClickListener(new View.OnClickListener(this) { // from class: g.fzp

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ fdp f17735c;

            {
                this.f17735c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i7) {
                    case 0:
                        fdp fdpVar = this.f17735c.q;
                        StringBuilder sb = new StringBuilder();
                        gek gekVar2 = gekVar;
                        sb.append((int) gekVar2.h);
                        sb.append(",");
                        sb.append((int) gekVar2.j);
                        sb.append(",");
                        sb.append((int) gekVar2.f17989c);
                        sb.append(",");
                        sb.append((int) gekVar2.f17990d);
                        fso.ae(fdpVar, "argb", sb.toString(), true);
                        break;
                    case 1:
                        fdp fdpVar2 = this.f17735c.q;
                        StringBuilder sb2 = new StringBuilder();
                        gek gekVar3 = gekVar;
                        sb2.append(gekVar3.o());
                        sb2.append(",");
                        sb2.append(gekVar3.p());
                        sb2.append(",");
                        sb2.append(gekVar3.l());
                        sb2.append(",");
                        sb2.append(gekVar3.n());
                        fso.ae(fdpVar2, "cmyk", sb2.toString(), true);
                        break;
                    case 2:
                        fdp fdpVar3 = this.f17735c.q;
                        StringBuilder sb3 = new StringBuilder();
                        gek gekVar4 = gekVar;
                        sb3.append((int) gekVar4.i);
                        sb3.append(",");
                        sb3.append((int) gekVar4.f17988b);
                        fso.ae(fdpVar3, "coordinate", sb3.toString(), true);
                        break;
                    default:
                        fso.ae(this.f17735c.q, "color", gekVar.f17991e, true);
                        break;
                }
            }
        });
        findViewById4.setOnLongClickListener(onLongClickListener);
        create.setCanceledOnTouchOutside(true);
        if (this.q != null) {
            create.show();
        }
        if (create.getWindow() != null) {
            create.getWindow().setLayout(Math.min((int) (fso.ag(this.q)[0] * 0.9f), (int) fso.al(this.q, 560.0f)), -2);
        }
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.x = null;
        if (this.t != configuration.orientation) {
            ab();
            aa();
            gm.c(this, R.string.please_reopen_color_picker);
            this.t = configuration.orientation;
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.q = this;
        this.i = new heo(this);
        this.s = (WindowManager) getSystemService("window");
        this.t = getResources().getConfiguration().orientation;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        ab();
        aa();
        super.onDestroy();
    }
}
