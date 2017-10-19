<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:temfunc bodyClass="gray-bg">
    <jsp:attribute name="header">
        <title>Homepage</title>
    </jsp:attribute>
    <jsp:attribute name="footer">

    </jsp:attribute>
    <jsp:body>
        <div class="signup-middle-box text-center animated fadeInDown">
            <div>
                <div>

                    <h1 class="logo-name">IN+</h1>

                </div>
                <h3>Đăng ký mới</h3>
                <c:if test="${statusSignup == 'invalid'}">
                    <p style="color: red;">Tên tài khoản hoặc email đã được đăng ký</p>
                </c:if>
                <form class="m-t" role="form" action="signup" method="POST">
                    <div class="col-md-12 form-horizontal">
                        <div class="form-group">
                                <label for="username" class="col-md-3 control-label">Tên tài khoản</label>
                            <div class="col-md-9">
                                    <input type="text" class="form-control" name="username" required="">
                            </div>
                        </div>
                        <div class="form-group">
                                <label for="email" class="col-md-3 control-label">Email</label>
                            <div class="col-md-9">
                                    <input type="email" class="form-control" name="email" required="">
                            </div>
                        </div>
                        <div class="form-group">
                                <label for="password" class="col-md-3 control-label">Mật khẩu</label>
                            <div class="col-md-9">
                                    <input type="password" class="form-control" name="password" required="">
                            </div>
                        </div>
                        <div class="form-group">
                                <label for="fullName" class="col-md-3 control-label">Tên</label>
                                <div class="col-md-9">
                                        <input type="text" class="form-control" name="fullName" required="">
                                </div>
                        </div>
                        <div class="form-group">
                                <label for="address" class="col-md-3 control-label">Địa chỉ</label>
                                <div class="col-md-9">
                                        <input type="text" class="form-control" name="address" required="">
                                </div>
                        </div>
                        <div class="form-group">
                                <label for="sex" class="col-md-3 control-label">Giới tính</label>

                            <div class="col-md-9">
                                <select class="form-control m-b" name="sex">
                                    <option value="Male">Nam</option>
                                    <option value="Female">Nữ</option>
                                    <option value="Gay">Gay</option>
                                    <option value="Les">Les</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="city" class="col-md-3 control-label">Tình trạng</label>
                            <div class="col-md-9">
                                <select class="form-control m-b" name="matrimony">
                                    <option value="1">Độc thân</option>
                                    <option value="2">Đang có người yêu</option>
                                    <option value="3">Đã có gia đình</option>
                                    <option value="4">Ly dị</option>
                                    <option value="5">Ở góa</option>
                                </select>
                            </div>
                        </div>
                        <!-- <div class="form-group">
                            <label for="city" class="col-md-3 control-label">Đến từ</label>
                            <div class="col-md-9">
                                <select class="form-control" name="city">
                                    <option selected="selected" value="58">TP Hồ Chí Minh</option>
                                    <option value="24">Hà Nội</option>
                                    <option value="15">Đà Nẵng</option>
                                    <option value="1">An Giang</option>
                                    <option value="2">Bà Rịa - Vũng Tàu</option>
                                    <option value="3">Bắc Giang</option>
                                    <option value="4">Bắc Kạn</option>
                                    <option value="5">Bạc Liêu</option>
                                    <option value="6">Bắc Ninh</option>
                                    <option value="7">Bến Tre</option>
                                    <option value="8">Bình Định</option>
                                    <option value="9">Bình Dương</option>
                                    <option value="10">Bình Phước</option>
                                    <option value="11">Bình Thuận</option>
                                    <option value="12">Cà Mau</option>
                                    <option value="13">Cần Thơ</option>
                                    <option value="14">Cao Bằng</option>
                                    <option value="16">Đăk Lăk</option>
                                    <option value="17">Đăk Nông</option>
                                    <option value="18">Điện Biên</option>
                                    <option value="19">Đồng Nai</option>
                                    <option value="20">Đồng Tháp</option>
                                    <option value="21">Gia Lai</option>
                                    <option value="22">Hà Giang</option>
                                    <option value="23">Hà Nam</option>
                                    <option value="25">Hà Tĩnh</option>
                                    <option value="26">Hải Dương</option>
                                    <option value="27">Hải Phòng</option>
                                    <option value="28">Hậu Giang</option>
                                    <option value="29">Hoà Bình</option>
                                    <option value="30">Hưng Yên</option>
                                    <option value="31">Khánh Hòa</option>
                                    <option value="32">Kiên Giang</option>
                                    <option value="33">Kon Tum</option>
                                    <option value="34">Lai Châu</option>
                                    <option value="35">Lâm Đồng</option>
                                    <option value="36">Lạng Sơn</option>
                                    <option value="37">Lào Cai</option>
                                    <option value="38">Long An</option>
                                    <option value="39">Nam Định</option>
                                    <option value="40">Nghệ An</option>
                                    <option value="41">Ninh Bình</option>
                                    <option value="42">Ninh Thuận</option>
                                    <option value="43">Phú Thọ</option>
                                    <option value="44">Phú Yên</option>
                                    <option value="45">Quảng Bình</option>
                                    <option value="46">Quảng Nam</option>
                                    <option value="47">Quảng Ngãi</option>
                                    <option value="48">Quảng Ninh</option>
                                    <option value="49">Quảng Trị</option>
                                    <option value="50">Sóc Trăng</option>
                                    <option value="51">Sơn La</option>
                                    <option value="52">Tây Ninh</option>
                                    <option value="53">Thái Bình</option>
                                    <option value="54">Thái Nguyên</option>
                                    <option value="55">Thanh Hóa</option>
                                    <option value="56">Thừa Thiên-Huế</option>
                                    <option value="57">Tiền Giang</option>
                                    <option value="59">Trà Vinh</option>
                                    <option value="60">Tuyên Quang</option>
                                    <option value="61">Vĩnh Long</option>
                                    <option value="62">Vĩnh Phúc</option>
                                    <option value="63">Yên Bái</option>
                                </select>
                            </div>
                       
                    </div> -->
                    <div class="form-group">
                            <label for="description" class="col-md-3 control-label">Giới thiệu</label>
                        <div class="col-md-9">
                                <textarea class="form-control" cols="25" name="description" placeholder="Bạn là người như thế nào?" rows="8"></textarea>
                        </div>
                    </div>
                    <!-- <div class="col-md-6 form-horizontal">
                        <div class="form-group">
                            <label for="MariedStatus" class="col-md-4 control-label">Hôn nhân</label>
                            <div class="col-md-8">
                                <select class="form-control valid" data-val="true" data-val-number="The field Hôn nhân must be a number." data-val-required="The Hôn nhân field is required." id="MariedStatus" name="MariedStatus" aria-required="true" aria-describedby="MariedStatus-error" aria-invalid="false">
                                    <option selected="selected" value="0">Độc thân</option>
                                    <option value="1">Đang có người yêu</option>
                                    <option value="2">Đã có gia đình</option>
                                    <option value="3">Ly dị</option>
                                    <option value="4">Ở góa</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Objective" class="col-md-4 control-label">Mục tiêu</label>
                            <div class="col-md-8">
                                <select class="form-control valid" data-val="true" data-val-number="The field Mục tiêu must be a number." data-val-required="The Mục tiêu field is required." id="Objective" name="Objective" aria-required="true" aria-describedby="Objective-error" aria-invalid="false">
                                    <option selected="selected" value="0">Người yêu lâu dài</option>
                                    <option value="1">Người yêu ngắn hạn</option>
                                    <option value="2">Tìm bạn bè mới</option>
                                    <option value="3">Tìm bạn tâm sự</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Degree" class="col-md-4 control-label">
                                Học vấn</label>
                            <div class="col-md-8">
                                <select class="form-control valid" data-val="true" data-val-number="The field Học vấn must be a number." data-val-required="The Học vấn field is required." id="Degree" name="Degree" aria-required="true" aria-describedby="Degree-error" aria-invalid="false">
                                    <option value="0">Phổ thông</option>
                                    <option selected="selected" value="1">Trung Cấp</option>
                                    <option value="2">Cao đẳng</option>
                                    <option value="3">Đại học</option>
                                    <option value="4">Thạc sĩ</option>
                                    <option value="5">Tiến sĩ</option>
                                    <option value="6">Giáo sư</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Age" class="col-md-4 control-label">Tuổi</label>
                            <div class="col-md-8">
                                <select class="form-control valid" data-val="true" data-val-number="The field Tuổi must be a number." data-val-required="The Tuổi field is required." id="Age" name="Age" aria-required="true" aria-describedby="Age-error" aria-invalid="false">
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option selected="selected" value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                    <option value="32">32</option>
                                    <option value="33">33</option>
                                    <option value="34">34</option>
                                    <option value="35">35</option>
                                    <option value="36">36</option>
                                    <option value="37">37</option>
                                    <option value="38">38</option>
                                    <option value="39">39</option>
                                    <option value="40">40</option>
                                    <option value="41">41</option>
                                    <option value="42">42</option>
                                    <option value="43">43</option>
                                    <option value="44">44</option>
                                    <option value="45">45</option>
                                    <option value="46">46</option>
                                    <option value="47">47</option>
                                    <option value="48">48</option>
                                    <option value="49">49</option>
                                    <option value="50">50</option>
                                    <option value="51">51</option>
                                    <option value="52">52</option>
                                    <option value="53">53</option>
                                    <option value="54">54</option>
                                    <option value="55">55</option>
                                    <option value="56">56</option>
                                    <option value="57">57</option>
                                    <option value="58">58</option>
                                    <option value="59">59</option>
                                    <option value="60">60</option>
                                    <option value="61">61</option>
                                    <option value="62">62</option>
                                    <option value="63">63</option>
                                    <option value="64">64</option>
                                    <option value="65">65</option>
                                    <option value="66">66</option>
                                    <option value="67">67</option>
                                    <option value="68">68</option>
                                    <option value="69">69</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Height" class="col-md-4 control-label">Chiều cao</label>
                            <div class="col-md-8">
                                <select class="form-control" data-val="true" data-val-number="The field Chiều cao must be a number." data-val-required="The Chiều cao field is required." id="Height" name="Height">
                                    <option value="100">100</option>
                                    <option value="101">101</option>
                                    <option value="102">102</option>
                                    <option value="103">103</option>
                                    <option value="104">104</option>
                                    <option value="105">105</option>
                                    <option value="106">106</option>
                                    <option value="107">107</option>
                                    <option value="108">108</option>
                                    <option value="109">109</option>
                                    <option value="110">110</option>
                                    <option value="111">111</option>
                                    <option value="112">112</option>
                                    <option value="113">113</option>
                                    <option value="114">114</option>
                                    <option value="115">115</option>
                                    <option value="116">116</option>
                                    <option value="117">117</option>
                                    <option value="118">118</option>
                                    <option value="119">119</option>
                                    <option value="120">120</option>
                                    <option value="121">121</option>
                                    <option value="122">122</option>
                                    <option value="123">123</option>
                                    <option value="124">124</option>
                                    <option value="125">125</option>
                                    <option value="126">126</option>
                                    <option value="127">127</option>
                                    <option value="128">128</option>
                                    <option value="129">129</option>
                                    <option value="130">130</option>
                                    <option value="131">131</option>
                                    <option value="132">132</option>
                                    <option value="133">133</option>
                                    <option value="134">134</option>
                                    <option value="135">135</option>
                                    <option value="136">136</option>
                                    <option value="137">137</option>
                                    <option value="138">138</option>
                                    <option value="139">139</option>
                                    <option value="140">140</option>
                                    <option value="141">141</option>
                                    <option value="142">142</option>
                                    <option value="143">143</option>
                                    <option value="144">144</option>
                                    <option value="145">145</option>
                                    <option value="146">146</option>
                                    <option value="147">147</option>
                                    <option value="148">148</option>
                                    <option value="149">149</option>
                                    <option value="150">150</option>
                                    <option value="151">151</option>
                                    <option value="152">152</option>
                                    <option value="153">153</option>
                                    <option value="154">154</option>
                                    <option value="155">155</option>
                                    <option value="156">156</option>
                                    <option value="157">157</option>
                                    <option value="158">158</option>
                                    <option value="159">159</option>
                                    <option value="160">160</option>
                                    <option value="161">161</option>
                                    <option value="162">162</option>
                                    <option value="163">163</option>
                                    <option value="164">164</option>
                                    <option value="165">165</option>
                                    <option value="166">166</option>
                                    <option value="167">167</option>
                                    <option value="168">168</option>
                                    <option value="169">169</option>
                                    <option selected="selected" value="170">170</option>
                                    <option value="171">171</option>
                                    <option value="172">172</option>
                                    <option value="173">173</option>
                                    <option value="174">174</option>
                                    <option value="175">175</option>
                                    <option value="176">176</option>
                                    <option value="177">177</option>
                                    <option value="178">178</option>
                                    <option value="179">179</option>
                                    <option value="180">180</option>
                                    <option value="181">181</option>
                                    <option value="182">182</option>
                                    <option value="183">183</option>
                                    <option value="184">184</option>
                                    <option value="185">185</option>
                                    <option value="186">186</option>
                                    <option value="187">187</option>
                                    <option value="188">188</option>
                                    <option value="189">189</option>
                                    <option value="190">190</option>
                                    <option value="191">191</option>
                                    <option value="192">192</option>
                                    <option value="193">193</option>
                                    <option value="194">194</option>
                                    <option value="195">195</option>
                                    <option value="196">196</option>
                                    <option value="197">197</option>
                                    <option value="198">198</option>
                                    <option value="199">199</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Weight" class="col-md-4 control-label">Cân nặng</label>
                            <div class="col-md-8">
                                <select class="form-control" data-val="true" data-val-number="The field Cân nặng must be a number." data-val-required="The Cân nặng field is required." id="Weight" name="Weight">
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                    <option value="32">32</option>
                                    <option value="33">33</option>
                                    <option value="34">34</option>
                                    <option value="35">35</option>
                                    <option value="36">36</option>
                                    <option value="37">37</option>
                                    <option value="38">38</option>
                                    <option value="39">39</option>
                                    <option value="40">40</option>
                                    <option value="41">41</option>
                                    <option value="42">42</option>
                                    <option value="43">43</option>
                                    <option value="44">44</option>
                                    <option value="45">45</option>
                                    <option value="46">46</option>
                                    <option value="47">47</option>
                                    <option value="48">48</option>
                                    <option value="49">49</option>
                                    <option selected="selected" value="50">50</option>
                                    <option value="51">51</option>
                                    <option value="52">52</option>
                                    <option value="53">53</option>
                                    <option value="54">54</option>
                                    <option value="55">55</option>
                                    <option value="56">56</option>
                                    <option value="57">57</option>
                                    <option value="58">58</option>
                                    <option value="59">59</option>
                                    <option value="60">60</option>
                                    <option value="61">61</option>
                                    <option value="62">62</option>
                                    <option value="63">63</option>
                                    <option value="64">64</option>
                                    <option value="65">65</option>
                                    <option value="66">66</option>
                                    <option value="67">67</option>
                                    <option value="68">68</option>
                                    <option value="69">69</option>
                                    <option value="70">70</option>
                                    <option value="71">71</option>
                                    <option value="72">72</option>
                                    <option value="73">73</option>
                                    <option value="74">74</option>
                                    <option value="75">75</option>
                                    <option value="76">76</option>
                                    <option value="77">77</option>
                                    <option value="78">78</option>
                                    <option value="79">79</option>
                                    <option value="80">80</option>
                                    <option value="81">81</option>
                                    <option value="82">82</option>
                                    <option value="83">83</option>
                                    <option value="84">84</option>
                                    <option value="85">85</option>
                                    <option value="86">86</option>
                                    <option value="87">87</option>
                                    <option value="88">88</option>
                                    <option value="89">89</option>
                                    <option value="90">90</option>
                                    <option value="91">91</option>
                                    <option value="92">92</option>
                                    <option value="93">93</option>
                                    <option value="94">94</option>
                                    <option value="95">95</option>
                                    <option value="96">96</option>
                                    <option value="97">97</option>
                                    <option value="98">98</option>
                                    <option value="99">99</option>
                                    <option value="100">100</option>
                                    <option value="101">101</option>
                                    <option value="102">102</option>
                                    <option value="103">103</option>
                                    <option value="104">104</option>
                                    <option value="105">105</option>
                                    <option value="106">106</option>
                                    <option value="107">107</option>
                                    <option value="108">108</option>
                                    <option value="109">109</option>
                                    <option value="110">110</option>
                                    <option value="111">111</option>
                                    <option value="112">112</option>
                                    <option value="113">113</option>
                                    <option value="114">114</option>
                                    <option value="115">115</option>
                                    <option value="116">116</option>
                                    <option value="117">117</option>
                                    <option value="118">118</option>
                                    <option value="119">119</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Country" class="col-md-4 control-label">Quốc gia</label>
                            <div class="col-md-8">
                                <select class="form-control" data-val="true" data-val-number="The field Country must be a number." data-val-required="The Country field is required." id="Country" name="Country">
                                    <option value="1">Afghanistan</option>
                                    <option value="2">Albania</option>
                                    <option value="3">Algeria</option>
                                    <option value="4">American Samoa</option>
                                    <option value="5">Andorra</option>
                                    <option value="6">Angola</option>
                                    <option value="7">Anguilla</option>
                                    <option value="8">Antarctica</option>
                                    <option value="9">Antigua and Barbuda</option>
                                    <option value="10">Argentina</option>
                                    <option value="11">Armenia</option>
                                    <option value="12">Aruba</option>
                                    <option value="13">Australia</option>
                                    <option value="14">Austria</option>
                                    <option value="15">Azerbaijan</option>
                                    <option value="16">Bahamas</option>
                                    <option value="17">Bahrain</option>
                                    <option value="18">Bangladesh</option>
                                    <option value="19">Barbados</option>
                                    <option value="20">Belarus</option>
                                    <option value="21">Belgium</option>
                                    <option value="22">Belize</option>
                                    <option value="23">Benin</option>
                                    <option value="24">Bermuda</option>
                                    <option value="25">Bhutan</option>
                                    <option value="26">Bolivia</option>
                                    <option value="27">Bosnia and Herzegovina</option>
                                    <option value="28">Botswana</option>
                                    <option value="29">Bouvet Island</option>
                                    <option value="30">Brazil</option>
                                    <option value="31">British Indian Ocean Territory</option>
                                    <option value="32">Brunei Darussalam</option>
                                    <option value="33">Bulgaria</option>
                                    <option value="34">Burkina Faso</option>
                                    <option value="35">Burundi</option>
                                    <option value="36">Cambodia</option>
                                    <option value="37">Cameroon</option>
                                    <option value="38">Canada</option>
                                    <option value="39">Cape Verde</option>
                                    <option value="40">Cayman Islands</option>
                                    <option value="41">Central African Republic</option>
                                    <option value="42">Chad</option>
                                    <option value="43">Chile</option>
                                    <option value="44">China</option>
                                    <option value="45">Christmas Island</option>
                                    <option value="46">Cocos (Keeling) Islands</option>
                                    <option value="47">Colombia</option>
                                    <option value="48">Comoros</option>
                                    <option value="49">Congo</option>
                                    <option value="50">Cook Islands</option>
                                    <option value="51">Costa Rica</option>
                                    <option value="52">Croatia (Hrvatska)</option>
                                    <option value="53">Cuba</option>
                                    <option value="54">Cyprus</option>
                                    <option value="55">Czech Republic</option>
                                    <option value="56">Denmark</option>
                                    <option value="57">Djibouti</option>
                                    <option value="58">Dominica</option>
                                    <option value="59">Dominican Republic</option>
                                    <option value="60">East Timor</option>
                                    <option value="61">Ecuador</option>
                                    <option value="62">Egypt</option>
                                    <option value="63">El Salvador</option>
                                    <option value="64">Equatorial Guinea</option>
                                    <option value="65">Eritrea</option>
                                    <option value="66">Estonia</option>
                                    <option value="67">Ethiopia</option>
                                    <option value="68">Falkland Islands (Malvinas)</option>
                                    <option value="69">Faroe Islands</option>
                                    <option value="70">Fiji</option>
                                    <option value="71">Finland</option>
                                    <option value="72">France</option>
                                    <option value="73">France, Metropolitan</option>
                                    <option value="74">French Guiana</option>
                                    <option value="75">French Polynesia</option>
                                    <option value="76">French Southern Territories</option>
                                    <option value="77">Gabon</option>
                                    <option value="78">Gambia</option>
                                    <option value="79">Georgia</option>
                                    <option value="80">Germany</option>
                                    <option value="81">Ghana</option>
                                    <option value="82">Gibraltar</option>
                                    <option value="83">Guernsey</option>
                                    <option value="84">Greece</option>
                                    <option value="85">Greenland</option>
                                    <option value="86">Grenada</option>
                                    <option value="87">Guadeloupe</option>
                                    <option value="88">Guam</option>
                                    <option value="89">Guatemala</option>
                                    <option value="90">Guinea</option>
                                    <option value="91">Guinea-Bissau</option>
                                    <option value="92">Guyana</option>
                                    <option value="93">Haiti</option>
                                    <option value="94">Heard and Mc Donald Islands</option>
                                    <option value="95">Honduras</option>
                                    <option value="96">Hong Kong</option>
                                    <option value="97">Hungary</option>
                                    <option value="98">Iceland</option>
                                    <option value="99">India</option>
                                    <option value="100">Isle of Man</option>
                                    <option value="101">Indonesia</option>
                                    <option value="102">Iran (Islamic Republic of)</option>
                                    <option value="103">Iraq</option>
                                    <option value="104">Ireland</option>
                                    <option value="105">Israel</option>
                                    <option value="106">Italy</option>
                                    <option value="107">Ivory Coast</option>
                                    <option value="108">Jersey</option>
                                    <option value="109">Jamaica</option>
                                    <option value="110">Japan</option>
                                    <option value="111">Jordan</option>
                                    <option value="112">Kazakhstan</option>
                                    <option value="113">Kenya</option>
                                    <option value="114">Kiribati</option>
                                    <option value="115">Korea, Democratic People's Republic of</option>
                                    <option value="116">Korea, Republic of</option>
                                    <option value="117">Kosovo</option>
                                    <option value="118">Kuwait</option>
                                    <option value="119">Kyrgyzstan</option>
                                    <option value="120">Lao People's Democratic Republic</option>
                                    <option value="121">Latvia</option>
                                    <option value="122">Lebanon</option>
                                    <option value="123">Lesotho</option>
                                    <option value="124">Liberia</option>
                                    <option value="125">Libyan Arab Jamahiriya</option>
                                    <option value="126">Liechtenstein</option>
                                    <option value="127">Lithuania</option>
                                    <option value="128">Luxembourg</option>
                                    <option value="129">Macau</option>
                                    <option value="130">Macedonia</option>
                                    <option value="131">Madagascar</option>
                                    <option value="132">Malawi</option>
                                    <option value="133">Malaysia</option>
                                    <option value="134">Maldives</option>
                                    <option value="135">Mali</option>
                                    <option value="136">Malta</option>
                                    <option value="137">Marshall Islands</option>
                                    <option value="138">Martinique</option>
                                    <option value="139">Mauritania</option>
                                    <option value="140">Mauritius</option>
                                    <option value="141">Mayotte</option>
                                    <option value="142">Mexico</option>
                                    <option value="143">Micronesia, Federated States of</option>
                                    <option value="144">Moldova, Republic of</option>
                                    <option value="145">Monaco</option>
                                    <option value="146">Mongolia</option>
                                    <option value="147">Montenegro</option>
                                    <option value="148">Montserrat</option>
                                    <option value="149">Morocco</option>
                                    <option value="150">Mozambique</option>
                                    <option value="151">Myanmar</option>
                                    <option value="152">Namibia</option>
                                    <option value="153">Nauru</option>
                                    <option value="154">Nepal</option>
                                    <option value="155">Netherlands</option>
                                    <option value="156">Netherlands Antilles</option>
                                    <option value="157">New Caledonia</option>
                                    <option value="158">New Zealand</option>
                                    <option value="159">Nicaragua</option>
                                    <option value="160">Niger</option>
                                    <option value="161">Nigeria</option>
                                    <option value="162">Niue</option>
                                    <option value="163">Norfolk Island</option>
                                    <option value="164">Northern Mariana Islands</option>
                                    <option value="165">Norway</option>
                                    <option value="166">Oman</option>
                                    <option value="167">Pakistan</option>
                                    <option value="168">Palau</option>
                                    <option value="169">Palestine</option>
                                    <option value="170">Panama</option>
                                    <option value="171">Papua New Guinea</option>
                                    <option value="172">Paraguay</option>
                                    <option value="173">Peru</option>
                                    <option value="174">Philippines</option>
                                    <option value="175">Pitcairn</option>
                                    <option value="176">Poland</option>
                                    <option value="177">Portugal</option>
                                    <option value="178">Puerto Rico</option>
                                    <option value="179">Qatar</option>
                                    <option value="180">Reunion</option>
                                    <option value="181">Romania</option>
                                    <option value="182">Russian Federation</option>
                                    <option value="183">Rwanda</option>
                                    <option value="184">Saint Kitts and Nevis</option>
                                    <option value="185">Saint Lucia</option>
                                    <option value="186">Saint Vincent and the Grenadines</option>
                                    <option value="187">Samoa</option>
                                    <option value="188">San Marino</option>
                                    <option value="189">Sao Tome and Principe</option>
                                    <option value="190">Saudi Arabia</option>
                                    <option value="191">Senegal</option>
                                    <option value="192">Serbia</option>
                                    <option value="193">Seychelles</option>
                                    <option value="194">Sierra Leone</option>
                                    <option value="195">Singapore</option>
                                    <option value="196">Slovakia</option>
                                    <option value="197">Slovenia</option>
                                    <option value="198">Solomon Islands</option>
                                    <option value="199">Somalia</option>
                                    <option value="200">South Africa</option>
                                    <option value="201">South Georgia South Sandwich Islands</option>
                                    <option value="202">Spain</option>
                                    <option value="203">Sri Lanka</option>
                                    <option value="204">St. Helena</option>
                                    <option value="205">St. Pierre and Miquelon</option>
                                    <option value="206">Sudan</option>
                                    <option value="207">Suriname</option>
                                    <option value="208">Svalbard and Jan Mayen Islands</option>
                                    <option value="209">Swaziland</option>
                                    <option value="210">Sweden</option>
                                    <option value="211">Switzerland</option>
                                    <option value="212">Syrian Arab Republic</option>
                                    <option value="213">Taiwan</option>
                                    <option value="214">Tajikistan</option>
                                    <option value="215">Tanzania, United Republic of</option>
                                    <option value="216">Thailand</option>
                                    <option value="217">Togo</option>
                                    <option value="218">Tokelau</option>
                                    <option value="219">Tonga</option>
                                    <option value="220">Trinidad and Tobago</option>
                                    <option value="221">Tunisia</option>
                                    <option value="222">Turkey</option>
                                    <option value="223">Turkmenistan</option>
                                    <option value="224">Turks and Caicos Islands</option>
                                    <option value="225">Tuvalu</option>
                                    <option value="226">Uganda</option>
                                    <option value="227">Ukraine</option>
                                    <option value="228">United Arab Emirates</option>
                                    <option value="229">United Kingdom</option>
                                    <option value="230">United States</option>
                                    <option value="231">United States minor outlying islands</option>
                                    <option value="232">Uruguay</option>
                                    <option value="233">Uzbekistan</option>
                                    <option value="234">Vanuatu</option>
                                    <option value="235">Vatican City State</option>
                                    <option value="236">Venezuela</option>
                                    <option selected="selected" value="237">Vietnam</option>
                                    <option value="238">Virgin Islands (British)</option>
                                    <option value="239">Virgin Islands (U.S.)</option>
                                    <option value="240">Wallis and Futuna Islands</option>
                                    <option value="241">Western Sahara</option>
                                    <option value="242">Yemen</option>
                                    <option value="243">Yugoslavia</option>
                                    <option value="244">Zaire</option>
                                    <option value="245">Zambia</option>
                                    <option value="246">Zimbabwe</option>
                                </select>
                                <span class="field-validation-valid" data-valmsg-for="Country" data-valmsg-replace="true"></span>
                            </div>
                        </div>
                        <div class="form-group" id="divProvince">
                            <label for="Province" class="col-md-4 control-label">Đến từ</label>
                            <div class="col-md-8">
                                <select class="form-control" data-val="true" data-val-number="The field Đến từ must be a number." data-val-required="The Đến từ field is required." id="Province" name="Province">
                                    <option selected="selected" value="58">TP Hồ Chí Minh</option>
                                    <option value="24">Hà Nội</option>
                                    <option value="15">Đà Nẵng</option>
                                    <option value="1">An Giang</option>
                                    <option value="2">Bà Rịa - Vũng Tàu</option>
                                    <option value="3">Bắc Giang</option>
                                    <option value="4">Bắc Kạn</option>
                                    <option value="5">Bạc Liêu</option>
                                    <option value="6">Bắc Ninh</option>
                                    <option value="7">Bến Tre</option>
                                    <option value="8">Bình Định</option>
                                    <option value="9">Bình Dương</option>
                                    <option value="10">Bình Phước</option>
                                    <option value="11">Bình Thuận</option>
                                    <option value="12">Cà Mau</option>
                                    <option value="13">Cần Thơ</option>
                                    <option value="14">Cao Bằng</option>
                                    <option value="16">Đăk Lăk</option>
                                    <option value="17">Đăk Nông</option>
                                    <option value="18">Điện Biên</option>
                                    <option value="19">Đồng Nai</option>
                                    <option value="20">Đồng Tháp</option>
                                    <option value="21">Gia Lai</option>
                                    <option value="22">Hà Giang</option>
                                    <option value="23">Hà Nam</option>
                                    <option value="25">Hà Tĩnh</option>
                                    <option value="26">Hải Dương</option>
                                    <option value="27">Hải Phòng</option>
                                    <option value="28">Hậu Giang</option>
                                    <option value="29">Hoà Bình</option>
                                    <option value="30">Hưng Yên</option>
                                    <option value="31">Khánh Hòa</option>
                                    <option value="32">Kiên Giang</option>
                                    <option value="33">Kon Tum</option>
                                    <option value="34">Lai Châu</option>
                                    <option value="35">Lâm Đồng</option>
                                    <option value="36">Lạng Sơn</option>
                                    <option value="37">Lào Cai</option>
                                    <option value="38">Long An</option>
                                    <option value="39">Nam Định</option>
                                    <option value="40">Nghệ An</option>
                                    <option value="41">Ninh Bình</option>
                                    <option value="42">Ninh Thuận</option>
                                    <option value="43">Phú Thọ</option>
                                    <option value="44">Phú Yên</option>
                                    <option value="45">Quảng Bình</option>
                                    <option value="46">Quảng Nam</option>
                                    <option value="47">Quảng Ngãi</option>
                                    <option value="48">Quảng Ninh</option>
                                    <option value="49">Quảng Trị</option>
                                    <option value="50">Sóc Trăng</option>
                                    <option value="51">Sơn La</option>
                                    <option value="52">Tây Ninh</option>
                                    <option value="53">Thái Bình</option>
                                    <option value="54">Thái Nguyên</option>
                                    <option value="55">Thanh Hóa</option>
                                    <option value="56">Thừa Thiên-Huế</option>
                                    <option value="57">Tiền Giang</option>
                                    <option value="59">Trà Vinh</option>
                                    <option value="60">Tuyên Quang</option>
                                    <option value="61">Vĩnh Long</option>
                                    <option value="62">Vĩnh Phúc</option>
                                    <option value="63">Yên Bái</option>
                                </select>
                                <span class="field-validation-valid" data-valmsg-for="Province" data-valmsg-replace="true"></span>
                            </div>
                        </div>
                        <div class="form-group" id="divCity" style="display: none;">
                            <label for="Province" class="col-md-4 control-label">Thành Phố</label>
                            <div class="col-md-8">
                                <input class="form-control" id="YahooNick" maxlength="100" name="YahooNick" placeholder="Thành Phố" type="text" value="">
                            </div>
                        </div>
                        
                       
                    </div> -->
                    <button type="submit" class="btn btn-primary block full-width m-b">Đăng ký</button>

                    <p class="text-muted text-center">
                        <small>Đã có tài khoản?</small>
                    </p>
                    <a class="btn btn-sm btn-white btn-block" href="signin">Đăng nhập</a>
                </form>
            </div>
        </div>
    </jsp:body>
</t:temfunc>