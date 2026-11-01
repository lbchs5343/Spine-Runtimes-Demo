package a.v;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import g.fso;

/* loaded from: classes.dex */
public class UniformTextView extends AppCompatTextView {
    private Context context;
    private int num;
    private int oneHeight;
    private int oneWidth;
    private Paint p;
    private String str;
    private int textSize;
    private String[] texts;
    private int viewHeight;
    private int viewWidth;

    public UniformTextView(Context context) {
        super(context, null);
        this.textSize = 15;
        this.context = context;
        init();
    }

    public UniformTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.textSize = 15;
        this.context = context;
        init();
    }

    public UniformTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.textSize = 15;
        this.context = context;
        init();
    }

    private void drawText(Canvas canvas) {
        int i = this.num;
        if (i == 0) {
            return;
        }
        int i2 = this.viewWidth / i;
        int i3 = this.viewHeight;
        int i4 = this.oneHeight;
        int i5 = ((i3 - i4) / 2) + i4;
        int i6 = 0;
        while (true) {
            int i7 = this.num;
            if (i6 >= i7) {
                return;
            }
            if (i6 == i7 - 1) {
                canvas.drawText(this.texts[i6], (this.viewWidth - this.oneWidth) - fso.al(this.context, 2.0f), i5, this.p);
            } else if (i6 == 0 || i6 == i7 - 1) {
                canvas.drawText(this.texts[i6], fso.al(this.context, 2.0f) + (i6 * i2), i5, this.p);
            } else {
                canvas.drawText(this.texts[i6], ((i2 / 2) + (i6 * i2)) - (this.oneWidth / 2), i5, this.p);
            }
            i6++;
        }
    }

    private void init() {
        setPadding(0, 0, 0, 0);
        this.viewWidth = getWidth();
        this.viewHeight = getHeight();
    }

    public Rect ce(String str) {
        Rect rect = new Rect();
        this.p.getTextBounds(str, 0, 1, rect);
        return rect;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        init();
        drawText(canvas);
    }

    public void setTestSize(int i) {
        this.textSize = i;
        String str = this.str;
        if (str != null) {
            setText(str);
        }
    }

    public void setText(String str) {
        if (str == null) {
            return;
        }
        Paint paint = new Paint();
        this.p = paint;
        paint.setTextSize(fso.al(this.context, this.textSize));
        this.str = str;
        this.num = str.length();
        this.oneWidth = ce("汉").width();
        this.oneHeight = ce(str).height();
        String[] strArr = new String[this.num];
        int i = 0;
        while (i < this.num) {
            int i2 = i + 1;
            strArr[i] = str.substring(i, i2);
            i = i2;
        }
        this.texts = strArr;
        invalidate();
    }
}
