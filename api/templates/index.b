<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Udom Ratiba API Documentation</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            color: #333;
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #007BFF;
            color: white;
            padding: 20px;
            text-align: center;
        }

        h1, h2, h3 {
            color: #007BFF;
        }

        a {
            color: #007BFF;
            text-decoration: none;
            transition: color 0.3s;
        }

        a:hover {
            color: #0056b3;
        }

        section {
            margin-bottom: 30px;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }

        pre {
            background-color: #f8f9fa;
            padding: 10px;
            border-radius: 6px;
            overflow-x: auto;
        }
    </style>
</head>

<body>
    <header class="bg-primary">
        <div class="container">
            <h1 style="color:white !important;">Udom Ratiba API Documentation</h1>
        </div>
    </header>

    <section class="container">
        <h2>Overview</h2>
        <p>
            Udom Ratiba API is a custom-made Flask application hosted on Vercel. It functions as a robust API,
            facilitating the extraction of schedule information from the University of Dodoma (Udom) Ratiba portal through
            web scraping. Developers are encouraged to leverage this API to seamlessly integrate Udom's schedule data
            into their applications and programs.
        </p>
    </section>



    <section class="container">
        <h2>API Endpoints</h2>

        <section class="container">
            <h2>API Endpoints</h2>
        
            <section>
                <h3>1. Get Categories</h3>
                <ul>
                    <li><strong>Endpoint:</strong> <code>/get/category</code></li>
                    <li><strong>Method:</strong> GET</li>
                    <li><strong>Description:</strong> Retrieve categories for schedule data.</li>
                </ul>
                <h4>Python Example</h4>
                <pre><code>
        import requests
        
        url = 'https://udom-ratiba-api.vercel.app/get/category'
        response = requests.get(url)
        
        print(response.text)</code></pre>
            </section>
        
            <section>
                <h3>2. Get Options</h3>
                <ul>
                    <li><strong>Endpoint:</strong> <code>/get/option</code></li>
                    <li><strong>Method:</strong> GET</li>
                    <li><strong>Description:</strong> Retrieve options for schedule data.</li>
                </ul>
                <h4>Python Example</h4>
                <pre><code>
        import requests
        
        url = 'https://udom-ratiba-api.vercel.app/get/option'
        response = requests.get(url)
        
        print(response.text)</code></pre>
            </section>
        
            <section>
                <h3>3. Get Programs</h3>
                <ul>
                    <li><strong>Endpoint:</strong> <code>/get/programme</code></li>
                    <li><strong>Method:</strong> GET</li>
                    <li><strong>Description:</strong> Retrieve programs for schedule data.</li>
                </ul>
                <h4>Python Example</h4>
                <pre><code>
        import requests
        
        url = 'https://udom-ratiba-api.vercel.app/get/programme'
        response = requests.get(url)
        
        print(response.text)</code></pre>
            </section>
        
            <section>
                <h3>4. Get Schedule Table</h3>
                <ul>
                    <li><strong>Endpoint:</strong> <code>/api</code></li>
                    <li><strong>Method:</strong> POST/GET</li>
                    <li><strong>Form Data:</strong></li>
                    <ul>
                        <li><code>option</code>: Option value</li>
                        <li><code>programme</code>: Program value</li>
                    </ul>
                    <li><strong>Description:</strong> Retrieve a schedule table based on the selected option and program.</li>
                </ul>
                <h4>Python Example</h4>
                <pre><code>
        import requests
        
        url = 'https://udom-ratiba-api.vercel.app/api'
        data = {
            'option': 'programme',
            'programme': '9986'
        }
        response = requests.post(url, data=data)
        
        print(response.text)</code></pre>
            </section>
        
        </section>
        
        <!-- ... Previous HTML code ... -->
        
        





<!-- ... Previous HTML code ... -->

<section class="container">
    <h2>How to Use? </h2>
    <p>Developers can integrate this API into their applications to access Udom Ratiba schedule data for various purposes, including but not limited to:</p>
    <ul>
        <li>Building schedule management applications</li>
        <li>Creating academic tools and resources</li>
        <li>Developing customized schedule widgets for websites</li>
    </ul>
    <p>Developers can send a request using the following example:</p>
    <pre><code>
import requests

url = 'https://udom-ratiba-api.vercel.app/api'

data = {
    'option': 'programme',
    'programme': '9986'
}

headers = {
    'User-Agent': 'YourCustomUserAgent/1.0',
    'Accept-Language': 'en-US,en;q=0.5',
    'Referer': 'https://ratiba.udom.ac.tz/',
    'Custom-Header': 'YourCustomValue'
}

responseFromServer = requests.post(url, data=data, headers=headers)

print(responseFromServer.text)</code></pre>
</section>

<!-- ... Remaining HTML code ... -->








        

    </section>


    <section class="container">
        <h2>How to Use</h2>
        <p>
            Developers can integrate this API into their applications to access Udom Ratiba schedule data for various
            purposes, including but not limited to:
        </p>
        <ul>
            <li>Building schedule management applications</li>
            <li>Creating academic tools and resources</li>
            <li>Developing customized schedule widgets for websites</li>
        </ul>
    </section>

    <div style="padding-left: 100px !important; padding-right: 100px !important;">
            <section>
                <h3>Invalid Request:</h3>
                <ul>
                    <li><strong>Error Code:</strong> 400</li>
                    <li><strong>Message:</strong> "Invalid request"</li>
                    <li><strong>Handling:</strong>
                        <ul>
                            <li>Ensure that the requested endpoint is valid.</li>
                            <li>Check if the parameters are correctly provided.</li>
                        </ul>
                    </li>
                </ul>
            </section>

            <section>
                <h3>Option or Programme Empty:</h3>
                <ul>
                    <li><strong>Error Code:</strong> 400</li>
                    <li><strong>Message:</strong> "Option or programme is empty"</li>
                    <li><strong>Handling:</strong>
                        <ul>
                            <li>Verify that both 'option' and 'programme' values are provided in the request form.</li>
                        </ul>
                    </li>
                </ul>
            </section>

            <section>
                <h3>Option or Programme Not Found:</h3>
                <ul>
                    <li><strong>Error Code:</strong> 400</li>
                    <li><strong>Message:</strong> "Option or programme not found in form data"</li>
                    <li><strong>Handling:</strong>
                        <ul>
                            <li>Make sure to include 'option' and 'programme' in the form data of the request.</li>
                        </ul>
                    </li>
                </ul>
            </section>

            <section>
                <h3>False Post Values Not Found:</h3>
                <ul>
                    <li><strong>Error Code:</strong> 400</li>
                    <li><strong>Message:</strong> "False post values not found"</li>
                    <li><strong>Handling:</strong>
                        <ul>
                            <li>Ensure that the necessary values ('option' and 'programme') are included in the POST request.</li>
                        </ul>
                    </li>
                </ul>
            </section>

            <section>
                <h3>Internal Server Error:</h3>
                <ul>
                    <li><strong>Error Code:</strong> 500</li>
                    <li><strong>Message:</strong> "An error occurred: {error_message}"</li>
                    <li><strong>Handling:</strong>
                        <ul>
                            <li>In case of a 500 error, there is an internal issue with the server. Contact the API provider for assistance.</li>
                        </ul>
                    </li>
                </ul>
            </section>

            <section>
                <h3>Purpose of the Request Not Specified:</h3>
                <ul>
                    <li><strong>Error Code:</strong> 400</li>
                    <li><strong>Message:</strong> "Invalid request"</li>
                    <li><strong>Handling:</strong>
                        <ul>
                            <li>Clearly specify the purpose of the request, i.e., 'category', 'option', or 'programme'.</li>
                        </ul>
                    </li>
                </ul>
            </section>

            <section>
                <h3>Values are Empty:</h3>
                <ul>
                    <li><strong>Error Code:</strong> 400</li>
                    <li><strong>Message:</strong> "The values are empty"</li>
                    <li><strong>Handling:</strong>
                        <ul>
                            <li>Ensure that both 'option' and 'programme' values are not empty in the POST request.</li>
                        </ul>
                    </li>
                </ul>
            </section>

            <section>
                <h3>Invalid SSL Request:</h3>
                <ul>
                    <li><strong>Error Code:</strong> 404</li>
                    <li><strong>Message:</strong> "Page not found"</li>
                    <li><strong>Handling:</strong>
                        <ul>
                            <li>Ensure that requests are made using secure HTTPS. Check the URL and update if necessary.</li>
                        </ul>
                    </li>
                </ul>
            </section>

            <section>
                <h3>Unexpected Error:</h3>
                <ul>
                    <li><strong>Error Code:</strong> 500</li>
                    <li><strong>Message:</strong> "An unexpected error occurred: {error_message}"</li>
                    <li><strong>Handling:</strong>
                        <ul>
                            <li>In case of an unexpected error, contact the API provider for assistance.</li>
                        </ul>
                    </li>
                </ul>
            </section>

            <section>
                <h3>Option or Programme Values Not Found:</h3>
                <ul>
                    <li><strong>Error Code:</strong> 400</li>
                    <li><strong>Message:</strong> "Option or programme values not found"</li>
                    <li><strong>Handling:</strong>
                        <ul>
                            <li>Verify that both 'option' and 'programme' values are provided in the POST request.</li>
                        </ul>
                    </li>
                </ul>
            </section>
    </div>



    <section class="container">
        <h2>Server Settings</h2>
        <p>
            The application is effortlessly hosted on Vercel, eliminating the need for a separate server setup.
            Developers can seamlessly access and utilize the API without the hassle of intricate server configurations.
        </p>
    </section>

    <section class="container">
        <h2>Author</h2>
        <p>
            This project is developed and maintained by masterplan. For inquiries or collaboration opportunities, feel free to contact
            <a href="https://wa.me/255673182989">Whatsapp</a>.
        </p>
    </section>

    <!-- ... Previous HTML code ... -->

<section class="container">
    <h2>License</h2>
    <p>This project is licensed under the <a href="#" data-toggle="modal" data-target="#licenseModal">MIT License</a>. Feel free to explore and adapt the codebase to meet your specific requirements.</p>
</section>

<!-- Bootstrap Modal for License -->
<div class="modal fade" id="licenseModal" tabindex="-1" role="dialog" aria-labelledby="licenseModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="licenseModalLabel">MIT License</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Copyright &copy; <span id="currentYear"></span> <span id="copyrightHolder">Masterplan</span></p>
                <p>Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:</p>
                <p>The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.</p>
                <p>THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- ... Remaining HTML code ... -->

<script>
    // Update the current year dynamically in the license modal
    document.getElementById('currentYear').innerText = new Date().getFullYear();
</script>




    <!-- Add other sections similarly with their respective styling -->

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
