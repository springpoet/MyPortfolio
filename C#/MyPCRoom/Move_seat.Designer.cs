namespace MyPCRoom
{
    partial class Move_seat
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.Current_seat = new System.Windows.Forms.Label();
            this.Moving_seat = new System.Windows.Forms.Label();
            this.move_button = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(90, 227);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(213, 35);
            this.textBox1.TabIndex = 0;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(90, 453);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(213, 35);
            this.textBox2.TabIndex = 1;
            // 
            // Current_seat
            // 
            this.Current_seat.AutoSize = true;
            this.Current_seat.Location = new System.Drawing.Point(90, 129);
            this.Current_seat.Name = "Current_seat";
            this.Current_seat.Size = new System.Drawing.Size(106, 24);
            this.Current_seat.TabIndex = 2;
            this.Current_seat.Text = "현재자리";
            // 
            // Moving_seat
            // 
            this.Moving_seat.AutoSize = true;
            this.Moving_seat.Location = new System.Drawing.Point(94, 373);
            this.Moving_seat.Name = "Moving_seat";
            this.Moving_seat.Size = new System.Drawing.Size(130, 24);
            this.Moving_seat.TabIndex = 3;
            this.Moving_seat.Text = "이동할자리";
            // 
            // move_button
            // 
            this.move_button.Location = new System.Drawing.Point(510, 279);
            this.move_button.Name = "move_button";
            this.move_button.Size = new System.Drawing.Size(225, 99);
            this.move_button.TabIndex = 4;
            this.move_button.Text = "이동";
            this.move_button.UseVisualStyleBackColor = true;
            this.move_button.Click += new System.EventHandler(this.move_button_Click);
            // 
            // Move_seat
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(13F, 24F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(883, 711);
            this.Controls.Add(this.move_button);
            this.Controls.Add(this.Moving_seat);
            this.Controls.Add(this.Current_seat);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Name = "Move_seat";
            this.Text = "Move_seat";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label Current_seat;
        private System.Windows.Forms.Label Moving_seat;
        private System.Windows.Forms.Button move_button;
    }
}