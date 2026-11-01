package a.v;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.media.AudioAttributes;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Choreographer;
import android.view.View;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.awf;
import g.cjh;
import g.cro;
import g.fso;
import g.gm;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class LCDView extends View implements Choreographer.FrameCallback {
    public static String DEFAULT_TIME_FORMAT = null;
    public static final String FONT_TYPE_DIGITAL = "lcd";
    private static final Map<String, FontInfo> FONT_TYPE_MAP;
    public static final String FONT_TYPE_REGULAR = "regular";
    public static final int GRAVITY_CENTER = 17;
    public static final int GRAVITY_CENTER_HORIZONTAL = 1;
    public static final int GRAVITY_CENTER_VERTICAL = 16;
    public static final int GRAVITY_DEFAULT = 0;
    private Choreographer choreographer;
    private Context context;
    private String customTimeText;
    private Paint disturbBgPaint;
    private int gravity;
    private boolean isPaused;
    private boolean isRemindEnabled;
    private boolean isRemindVibrate;
    private boolean isShowDisturbBg;
    private boolean lastIsRemind;
    private Paint paint;
    private int remindColor;
    private int remindHour;
    private int remindMillisecond;
    private int remindMinute;
    private Paint remindPaint;
    private int remindSecond;
    private float singleNumberWidth;
    private int textColor;
    private String textFontType;
    private float textSize;
    private String timeFormat;
    private long timeOffsetInMs;
    private Vibrator vibrator;
    private float xBegin;
    private float xSpacing;
    private float yBegin;

    public static class FontInfo {
        private String path;
        private String type;

        public FontInfo(String str, String str2) {
            this.type = str;
            this.path = str2;
        }

        public String getType() {
            return this.type;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        FONT_TYPE_MAP = hashMap;
        hashMap.put(FONT_TYPE_REGULAR, new FontInfo(FONT_TYPE_REGULAR, ""));
        hashMap.put(FONT_TYPE_DIGITAL, new FontInfo(FONT_TYPE_DIGITAL, "fonts/digital.ttf"));
        DEFAULT_TIME_FORMAT = "07:05:23.2";
    }

    public LCDView(Context context) {
        super(context);
        this.isPaused = false;
        this.timeFormat = DEFAULT_TIME_FORMAT;
        this.textSize = -1.0f;
        this.singleNumberWidth = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.textColor = -16777216;
        this.textFontType = FONT_TYPE_REGULAR;
        this.isShowDisturbBg = false;
        this.remindColor = -65536;
        this.isRemindVibrate = false;
        this.timeOffsetInMs = 0L;
        this.customTimeText = null;
        this.isRemindEnabled = true;
        this.remindHour = -1;
        this.remindMinute = -1;
        this.remindSecond = -1;
        this.remindMillisecond = -1;
        this.lastIsRemind = false;
        this.xBegin = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        init(context, null);
    }

    public LCDView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isPaused = false;
        this.timeFormat = DEFAULT_TIME_FORMAT;
        this.textSize = -1.0f;
        this.singleNumberWidth = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.textColor = -16777216;
        this.textFontType = FONT_TYPE_REGULAR;
        this.isShowDisturbBg = false;
        this.remindColor = -65536;
        this.isRemindVibrate = false;
        this.timeOffsetInMs = 0L;
        this.customTimeText = null;
        this.isRemindEnabled = true;
        this.remindHour = -1;
        this.remindMinute = -1;
        this.remindSecond = -1;
        this.remindMillisecond = -1;
        this.lastIsRemind = false;
        this.xBegin = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        init(context, attributeSet);
    }

    public static String fillToTwoDigital(int i) {
        return (i >= 10 || i < 0) ? String.valueOf(i) : awf.ac(i, "0");
    }

    public static float getDefaultTextSizeInDp(Context context) {
        return fso.ab(context, getDefaultTextSizeInPx(context));
    }

    public static float getDefaultTextSizeInDp(Context context, String str) {
        return fso.ab(context, getDefaultTextSizeInPx(context, str));
    }

    public static float getDefaultTextSizeInPx(Context context) {
        return getDefaultTextSizeInPx(context, DEFAULT_TIME_FORMAT);
    }

    public static float getDefaultTextSizeInPx(Context context, String str) {
        float length = fso.ar(context) ? (context.getResources().getDisplayMetrics().widthPixels / str.length()) * 0.65f : context.getResources().getDisplayMetrics().widthPixels / str.length();
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f3 = 1000.0f;
        while (f2 <= f3) {
            float f4 = (f2 + f3) / 2.0f;
            paint.setTextSize(f4);
            float measureText = paint.measureText("0");
            if (Math.abs(measureText - length) < 0.1d) {
                return f4;
            }
            if (measureText < length) {
                f2 = f4 + 0.1f;
            } else {
                f3 = f4 - 0.1f;
            }
            if (f3 - f2 < 0.1d) {
                break;
            }
        }
        return (f2 + f3) / 2.0f;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02f7, code lost:
    
        if (r12 != false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x031d, code lost:
    
        if (r4 != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x00f1, code lost:
    
        if (r15.equals("07:05:23") != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x018f, code lost:
    
        if (r14 != false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0191, code lost:
    
        r2 = 9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x019f, code lost:
    
        if (r14 == false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01c7, code lost:
    
        if (r14 != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01fe, code lost:
    
        if (r14 != false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0243, code lost:
    
        if (r14 != false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0251, code lost:
    
        if (r14 == false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0277, code lost:
    
        if (r14 != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x02ad, code lost:
    
        if (r14 != false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02bf, code lost:
    
        if (r14 == false) goto L169;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Pair<String, Integer> getShowTime() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        String str;
        String str2;
        int i = -1;
        if (this.customTimeText != null) {
            return new Pair<>(this.customTimeText, -1);
        }
        Calendar calendar = Calendar.getInstance();
        if (this.timeOffsetInMs != 0) {
            calendar.setTimeInMillis(calendar.getTimeInMillis() + this.timeOffsetInMs);
        }
        char c2 = 1;
        boolean an = cro.an(this.context, "24_hour_format", true);
        int i2 = calendar.get(an ? 11 : 10);
        if (!an && i2 == 0) {
            i2 = 12;
        }
        int ceil = (int) Math.ceil(calendar.get(14) / 10.0d);
        if (ceil >= 100) {
            ceil = 0;
        }
        int ceil2 = (int) Math.ceil(ceil / 10);
        Calendar calendar2 = (Calendar) calendar.clone();
        int i3 = this.remindHour;
        if (i3 >= 0) {
            calendar2.set(11, i3);
        }
        int i4 = this.remindMinute;
        if (i4 >= 0) {
            calendar2.set(12, i4);
        }
        int i5 = this.remindSecond;
        if (i5 >= 0) {
            calendar2.set(13, i5);
        }
        int i6 = this.remindMillisecond;
        if (i6 >= 0) {
            calendar2.set(14, i6);
        }
        Calendar calendar3 = (Calendar) calendar2.clone();
        calendar3.set(14, 999);
        if (calendar.compareTo(calendar2) >= 0 && calendar.compareTo(calendar3) <= 0) {
            if (this.remindHour >= 0) {
                z = true;
                z4 = false;
                z3 = false;
                z2 = false;
                str = this.timeFormat;
                switch (str.hashCode()) {
                    case -773966995:
                        if (str.equals("07:05:23.24")) {
                            c2 = 6;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -743163046:
                        if (str.equals("05:23.24")) {
                            c2 = 7;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 50:
                        if (str.equals("2")) {
                            c2 = 5;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1601:
                        if (str.equals("23")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1602:
                        if (str.equals("24")) {
                            c2 = '\t';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1540037:
                        if (str.equals("23.2")) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 46024792:
                        if (str.equals("07:05")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 47741199:
                        if (str.equals("23.24")) {
                            c2 = '\b';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1030068387:
                        break;
                    case 1222952986:
                        if (str.equals("05:23.2")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 2053243303:
                        if (str.equals("07:05:23.2")) {
                            c2 = '\n';
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 0:
                        str2 = fillToTwoDigital(i2) + ":" + fillToTwoDigital(calendar.get(12));
                        if (!z) {
                        }
                        i = 0;
                        break;
                    case 1:
                        str2 = fillToTwoDigital(i2) + ":" + fillToTwoDigital(calendar.get(12)) + ":" + fillToTwoDigital(calendar.get(13));
                        if (!z) {
                            if (!z4) {
                            }
                            i = 3;
                            break;
                        }
                        i = 0;
                        break;
                    case 2:
                        str2 = fillToTwoDigital(calendar.get(13));
                        if (!z) {
                            if (!z4) {
                                if (!z3) {
                                }
                            }
                        }
                        i = 0;
                        break;
                    case 3:
                        str2 = fillToTwoDigital(calendar.get(12)) + ":" + fillToTwoDigital(calendar.get(13)) + "." + ceil2;
                        if (!z && !z4) {
                            if (!z3) {
                            }
                            i = 3;
                            break;
                        }
                        i = 0;
                        break;
                    case 4:
                        str2 = fillToTwoDigital(calendar.get(13)) + "." + ceil2;
                        if (!z && !z4 && !z3) {
                        }
                        i = 0;
                        break;
                    case 5:
                        str2 = Integer.toString(ceil2);
                        if (!z) {
                            if (!z4) {
                                if (!z3) {
                                }
                            }
                        }
                        i = 0;
                        break;
                    case 6:
                        str2 = fillToTwoDigital(i2) + ":" + fillToTwoDigital(calendar.get(12)) + ":" + fillToTwoDigital(calendar.get(13)) + "." + fillToTwoDigital(ceil);
                        if (!z) {
                            if (!z4) {
                                if (!z3) {
                                }
                                i = 6;
                                break;
                            }
                            i = 3;
                            break;
                        }
                        i = 0;
                        break;
                    case 7:
                        str2 = fillToTwoDigital(calendar.get(12)) + ":" + fillToTwoDigital(calendar.get(13)) + "." + fillToTwoDigital(ceil);
                        if (!z && !z4) {
                            if (!z3) {
                            }
                            i = 3;
                            break;
                        }
                        i = 0;
                        break;
                    case '\b':
                        str2 = fillToTwoDigital(calendar.get(13)) + "." + fillToTwoDigital(ceil);
                        if (!z && !z4 && !z3) {
                        }
                        i = 0;
                        break;
                    case '\t':
                        str2 = fillToTwoDigital(ceil);
                        if (!z) {
                            if (!z4) {
                                if (!z3) {
                                }
                            }
                        }
                        i = 0;
                        break;
                    default:
                        str2 = fillToTwoDigital(i2) + ":" + fillToTwoDigital(calendar.get(12)) + ":" + fillToTwoDigital(calendar.get(13)) + "." + ceil2;
                        if (!z) {
                            if (!z4) {
                                if (!z3) {
                                }
                                i = 6;
                                break;
                            }
                            i = 3;
                            break;
                        }
                        i = 0;
                        break;
                }
                return new Pair<>(str2, Integer.valueOf(i));
            }
            if (this.remindMinute >= 0) {
                z = false;
                z4 = true;
                z3 = false;
                z2 = false;
                str = this.timeFormat;
                switch (str.hashCode()) {
                    case -773966995:
                        break;
                    case -743163046:
                        break;
                    case 50:
                        break;
                    case 1601:
                        break;
                    case 1602:
                        break;
                    case 1540037:
                        break;
                    case 46024792:
                        break;
                    case 47741199:
                        break;
                    case 1030068387:
                        break;
                    case 1222952986:
                        break;
                    case 2053243303:
                        break;
                }
                switch (c2) {
                }
                return new Pair<>(str2, Integer.valueOf(i));
            }
            if (this.remindSecond >= 0) {
                z = false;
                z4 = false;
                z3 = true;
                z2 = false;
                str = this.timeFormat;
                switch (str.hashCode()) {
                    case -773966995:
                        break;
                    case -743163046:
                        break;
                    case 50:
                        break;
                    case 1601:
                        break;
                    case 1602:
                        break;
                    case 1540037:
                        break;
                    case 46024792:
                        break;
                    case 47741199:
                        break;
                    case 1030068387:
                        break;
                    case 1222952986:
                        break;
                    case 2053243303:
                        break;
                }
                switch (c2) {
                }
                return new Pair<>(str2, Integer.valueOf(i));
            }
            if (this.remindMillisecond >= 0) {
                z = false;
                z4 = false;
                z3 = false;
                z2 = true;
                str = this.timeFormat;
                switch (str.hashCode()) {
                    case -773966995:
                        break;
                    case -743163046:
                        break;
                    case 50:
                        break;
                    case 1601:
                        break;
                    case 1602:
                        break;
                    case 1540037:
                        break;
                    case 46024792:
                        break;
                    case 47741199:
                        break;
                    case 1030068387:
                        break;
                    case 1222952986:
                        break;
                    case 2053243303:
                        break;
                }
                switch (c2) {
                }
                return new Pair<>(str2, Integer.valueOf(i));
            }
        }
        z = false;
        z4 = false;
        z3 = false;
        z2 = false;
        str = this.timeFormat;
        switch (str.hashCode()) {
            case -773966995:
                break;
            case -743163046:
                break;
            case 50:
                break;
            case 1601:
                break;
            case 1602:
                break;
            case 1540037:
                break;
            case 46024792:
                break;
            case 47741199:
                break;
            case 1030068387:
                break;
            case 1222952986:
                break;
            case 2053243303:
                break;
        }
        switch (c2) {
        }
        return new Pair<>(str2, Integer.valueOf(i));
    }

    private float getSingleNumberWidth(Paint paint) {
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        for (int i = 0; i <= 9; i++) {
            float measureText = paint.measureText(Integer.toString(i));
            if (measureText > f2) {
                f2 = measureText;
            }
        }
        return f2;
    }

    private float getSingleTextWidth(char c2) {
        return (c2 == ':' || c2 == '.') ? this.paint.measureText(String.valueOf(c2)) : this.singleNumberWidth;
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.context = context;
        if (attributeSet != null) {
            try {
                TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, cjh.f12978a);
                float dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(3, -1);
                this.textSize = dimensionPixelSize;
                if (dimensionPixelSize == -1.0f) {
                    this.textSize = getDefaultTextSizeInPx(context, this.timeFormat);
                }
                this.textColor = obtainStyledAttributes.getColor(2, this.textColor);
                this.remindColor = obtainStyledAttributes.getColor(1, this.remindColor);
                this.gravity = obtainStyledAttributes.getInt(0, 0);
                obtainStyledAttributes.recycle();
            } catch (Exception unused) {
            }
        }
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.paint.setTextSize(this.textSize);
        this.paint.setColor(this.textColor);
        setPaintFontType(this.paint, this.textFontType);
        Paint paint2 = new Paint(this.paint);
        this.disturbBgPaint = paint2;
        paint2.setColor(this.textColor & 452984831);
        Paint paint3 = new Paint(this.paint);
        this.remindPaint = paint3;
        paint3.setColor(this.remindColor);
        this.choreographer = Choreographer.getInstance();
        this.singleNumberWidth = getSingleNumberWidth(this.paint);
        this.xSpacing = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    private void setPaintFontType(Paint paint, String str) {
        FontInfo fontInfo = FONT_TYPE_MAP.get(str);
        paint.setTypeface((fontInfo == null || TextUtils.isEmpty(fontInfo.path)) ? Typeface.DEFAULT : Typeface.createFromAsset(getContext().getAssets(), fontInfo.path));
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        if (this.isPaused) {
            return;
        }
        invalidate();
        this.choreographer.postFrameCallback(this);
    }

    public float getAllTextWidth() {
        String str = (String) getShowTime().first;
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        for (int i = 0; i < str.length(); i++) {
            if (i > 0) {
                f2 += this.xSpacing;
            }
            f2 += getSingleTextWidth(str.charAt(i));
        }
        return f2;
    }

    public String getCustomTimeText() {
        return this.customTimeText;
    }

    public int getRemindHour() {
        return this.remindHour;
    }

    public int getRemindMillisecond() {
        return this.remindMillisecond;
    }

    public int getRemindMinute() {
        return this.remindMinute;
    }

    public int getRemindSecond() {
        return this.remindSecond;
    }

    public String getTimeFormat() {
        return this.timeFormat;
    }

    public long getTimeOffsetInMs() {
        return this.timeOffsetInMs;
    }

    public boolean isRemindEnabled() {
        return this.isRemindEnabled;
    }

    public boolean isShowDisturbBg() {
        return this.isShowDisturbBg;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isPaused = false;
        this.choreographer.postFrameCallback(this);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isPaused = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        VibrationEffect createOneShot;
        super.onDraw(canvas);
        float f2 = this.xBegin;
        Pair<String, Integer> showTime = getShowTime();
        String str = (String) showTime.first;
        int i = 0;
        while (true) {
            if (i >= str.length()) {
                break;
            }
            char charAt = str.charAt(i);
            if (this.isShowDisturbBg && Character.isDigit(charAt)) {
                canvas.drawText("8", f2, this.yBegin, this.disturbBgPaint);
            }
            boolean z = this.isRemindEnabled && ((Integer) showTime.second).intValue() >= 0 && i >= ((Integer) showTime.second).intValue();
            canvas.drawText(String.valueOf(charAt), f2, this.yBegin, z ? this.remindPaint : this.paint);
            if (!this.lastIsRemind && z && this.isRemindVibrate) {
                if (this.vibrator == null) {
                    this.vibrator = (Vibrator) this.context.getSystemService("vibrator");
                }
                Context context = this.context;
                Vibrator vibrator = this.vibrator;
                if (vibrator != null) {
                    if (!vibrator.hasVibrator()) {
                        gm.f(context, R.string.not_support_vibrate);
                    } else if (Build.VERSION.SDK_INT >= 26) {
                        createOneShot = VibrationEffect.createOneShot(100L, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                        vibrator.vibrate(createOneShot, new AudioAttributes.Builder().setContentType(4).setUsage(4).build());
                    } else {
                        vibrator.vibrate(100L);
                    }
                }
            }
            f2 += getSingleTextWidth(str.charAt(i)) + this.xSpacing;
            i++;
        }
        this.lastIsRemind = ((Integer) showTime.second).intValue() >= 0;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(getPaddingRight() + getPaddingLeft() + ((int) getAllTextWidth()), size) : getPaddingRight() + getPaddingLeft() + ((int) getAllTextWidth());
        }
        Paint.FontMetrics fontMetrics = this.paint.getFontMetrics();
        float f2 = fontMetrics.bottom - fontMetrics.top;
        if (mode2 != 1073741824) {
            size2 = mode2 == Integer.MIN_VALUE ? Math.min((int) (getPaddingTop() + f2 + getPaddingBottom()), size2) : (int) (getPaddingTop() + f2 + getPaddingBottom());
        }
        setMeasuredDimension(size, size2);
        if ((this.gravity & 1) != 0) {
            this.xBegin = ((((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - getAllTextWidth()) / 2.0f) + getPaddingLeft();
        } else {
            this.xBegin = getPaddingLeft();
        }
        if ((this.gravity & 16) != 0) {
            this.yBegin = (((((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - f2) / 2.0f) + getPaddingTop()) - fontMetrics.top;
        } else {
            this.yBegin = getPaddingTop() - fontMetrics.top;
        }
    }

    public void onPause() {
        this.isPaused = true;
    }

    public void onResume() {
        if (this.isPaused) {
            this.isPaused = false;
            this.choreographer.postFrameCallback(this);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
    }

    public void setCustomTimeText(String str) {
        this.customTimeText = str;
        invalidate();
    }

    public void setParentBackgroundColor(int i) {
        Object parent = getParent();
        if (parent == null || !(parent instanceof View)) {
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(this.context.getResources().getDimensionPixelSize(R.dimen.dp_2));
        ((View) parent).setBackground(gradientDrawable);
    }

    public void setRemindColor(int i) {
        this.remindColor = i;
        this.remindPaint.setColor(i);
        requestLayout();
    }

    public void setRemindEnabled(boolean z) {
        this.isRemindEnabled = z;
        invalidate();
    }

    public void setRemindHour(int i) {
        this.remindHour = i;
    }

    public void setRemindMillisecond(int i) {
        this.remindMillisecond = i;
    }

    public void setRemindMinute(int i) {
        this.remindMinute = i;
    }

    public void setRemindSecond(int i) {
        this.remindSecond = i;
    }

    public void setRemindVibrate(boolean z) {
        this.isRemindVibrate = z;
    }

    public void setShowDisturbBg(boolean z) {
        this.isShowDisturbBg = z;
    }

    public void setTextColor(int i) {
        this.textColor = i;
        this.paint.setColor(i);
        this.disturbBgPaint.setColor(i & 452984831);
    }

    public void setTextFontType(String str) {
        this.textFontType = str;
        setPaintFontType(this.paint, str);
        this.disturbBgPaint.setTypeface(this.paint.getTypeface());
        this.remindPaint.setTypeface(this.paint.getTypeface());
        this.singleNumberWidth = getSingleNumberWidth(this.paint);
        requestLayout();
    }

    public void setTextSize(float f2) {
        this.textSize = f2;
        this.paint.setTextSize(f2);
        this.disturbBgPaint.setTextSize(f2);
        this.remindPaint.setTextSize(f2);
        this.singleNumberWidth = getSingleNumberWidth(this.paint);
        requestLayout();
    }

    public void setTextSizeSp(float f2) {
        setTextSize(f2 * getContext().getResources().getDisplayMetrics().scaledDensity);
    }

    public void setTimeFormat(String str) {
        this.timeFormat = str;
        requestLayout();
    }

    public void setTimeOffsetInMs(long j) {
        this.timeOffsetInMs = j;
    }
}
